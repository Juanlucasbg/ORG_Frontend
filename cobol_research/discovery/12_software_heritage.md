# Software Heritage — COBOL Corpus Discovery

**Date investigated:** 2026-05-30  
**Archive:** Software Heritage (https://archive.softwareheritage.org)  
**Scale:** 12+ billion unique source files, 2 billion commits, 180+ million projects (as of 2023; continuously growing)

---

## What's possible

Software Heritage is the largest public software archive in existence, storing a fully deduplicated Merkle DAG of every public repository it has crawled. There are four realistic access paths for extracting COBOL:

1. **REST API — content lookup by hash:** Any file stored in the archive can be retrieved by its cryptographic hash (SHA1, SHA1-git, SHA256, BLAKE2S). Given a hash, raw content is directly downloadable.

2. **REST API — origin search with query language:** The `/api/1/origin/search/` endpoint accepts a structured query language. It supports a `language in [...]` filter backed by ElasticSearch (powered by swh-search). In principle, `language in [cobol]` is a valid filter form. However, whether COBOL origins are actually indexed with a language tag depends on what metadata was ingested (see Limitations).

3. **REST API — origin metadata search:** `/api/1/origin/metadata-search/` supports full-text search over JSON-LD/CodeMeta metadata associated with origins. Repositories whose metadata explicitly names COBOL as `programmingLanguage` will surface here.

4. **Graph dataset on AWS / Athena (primary bulk method):** The full archive is exported as relational ORC/Parquet tables to S3 (`s3://softwareheritage/`, `us-east-1`). The `directory_entry` table stores every filename in the archive. A SQL query filtering on filename suffix (`.cbl`, `.cob`, `.cpy`) returns content-hash IDs; those hashes then map directly to raw file bytes via `s3://softwareheritage/content/<sha1>`.

5. **Vault API — cooked bundles:** Individual directories or revisions can be "cooked" into a tar.gz and downloaded. This is suitable for known COBOL repositories once identified, but does not scale for corpus construction without prior discovery.

6. **SwhFS (FUSE mount):** `swh fs mount` exposes the archive as a local POSIX filesystem, browseable by SWHID. This is useful for ad-hoc inspection but not bulk extraction.

---

## Concrete API endpoints/queries

### REST API (base: `https://archive.softwareheritage.org/api/1/`)

**Origin search with language filter (swh-search query language):**
```
GET /api/1/origin/search/?q=language+in+[cobol]&limit=100
GET /api/1/origin/search/?q=language+in+[cobol]&with_visit=true&limit=100
```
Query language syntax: `origin : <keyword> and language in [cobol] and visits >= 1`

**Origin metadata full-text search (CodeMeta):**
```
GET /api/1/origin/metadata-search/?fulltext=COBOL&limit=100
GET /api/1/origin/metadata-search/?fulltext=cobol+programming&limit=100
```

**Content lookup by hash (once you have a SHA1):**
```
GET /api/1/content/sha1:<hex>/              — metadata (length, hashes, etc.)
GET /api/1/content/sha1:<hex>/raw/          — raw file bytes
GET /api/1/content/sha1:<hex>/filetype/     — detected MIME type
GET /api/1/content/sha1:<hex>/language/     — detected programming language (often empty)
```

**Content via S3 (no API rate limits — preferred for bulk):**
```
s3://softwareheritage/content/<sha1>
https://softwareheritage.s3.amazonaws.com/content/<sha1>
```
Note: `<sha1>` here is the plain SHA1 hex, NOT sha1_git. The S3 bucket is in `us-east-1`.

**Vault (cook + download a known directory):**
```
POST /api/1/vault/flat/<swhid>/             — request cooking
GET  /api/1/vault/flat/<swhid>/             — poll status
GET  /api/1/vault/flat/<swhid)/raw/         — download tar.gz once "done"
```

**Provenance (find which repos contain a known content hash):**
```
GET /api/1/provenance/whereis/<swhid>/
```
(This endpoint requires authenticated access with special permissions.)

**Authentication (to raise rate limits):**
```
Authorization: Bearer <token>
```
Obtain a token at https://archive.softwareheritage.org/api/auth/token/

### Graph Dataset on Amazon Athena

S3 export bucket: `s3://softwareheritage/` (us-east-1, public)  
ORC tables path: `s3://softwareheritage/graph/<export-date>/orc/`

**Core tables relevant to COBOL extraction:**

| Table | Key columns |
|---|---|
| `directory_entry` | `dir_id`, `name` (binary filename), `target` (content sha1_git), `type` |
| `content` | `sha1` (plain), `sha1_git`, `sha256`, `blake2s256`, `length`, `status` |
| `origin` | `id`, `url` |
| `origin_visit_status` | `origin_id`, `snapshot_id`, `status` |

**Step 1 — find all content SHA1s with COBOL filenames (Athena SQL):**
```sql
SELECT
    from_utf8(name, '?') AS filename,
    target AS sha1_git,
    COUNT(*) AS occurrences
FROM directory_entry
WHERE
    type = 'file'
    AND (
        from_utf8(name, '?') LIKE '%.cbl'
        OR from_utf8(name, '?') LIKE '%.cob'
        OR from_utf8(name, '?') LIKE '%.cpy'
        OR from_utf8(name, '?') LIKE '%.CBL'
        OR from_utf8(name, '?') LIKE '%.COB'
    )
GROUP BY name, target
ORDER BY occurrences DESC;
```
`name` is stored as binary; `from_utf8(name, '?')` decodes it with `?` as fallback for invalid UTF-8.

**Step 2 — join to content table to get plain SHA1 (for S3 download):**
```sql
SELECT
    de.target AS sha1_git,
    c.sha1,
    c.length,
    from_utf8(de.name, '?') AS filename
FROM directory_entry de
JOIN content c ON de.target = c.sha1_git
WHERE
    de.type = 'file'
    AND (
        from_utf8(de.name, '?') LIKE '%.cbl'
        OR from_utf8(de.name, '?') LIKE '%.cob'
        OR from_utf8(de.name, '?') LIKE '%.cpy'
    )
    AND c.status = 'visible';
```

**Step 3 — download content from S3 (for each plain SHA1 from step 2):**
```bash
aws s3 cp s3://softwareheritage/content/<sha1> ./cobol_files/<sha1>.cbl
```
Or in bulk via AWS CLI sync / s5cmd for parallelism.

**Most-frequent-filenames diagnostic query (baseline):**
```sql
SELECT from_utf8(name, '?') AS name, COUNT(DISTINCT target) AS cnt
FROM directory_entry
GROUP BY name
ORDER BY cnt DESC
LIMIT 20;
```
(Example from official SWH documentation.)

---

## Limitations for COBOL

1. **The `language in [cobol]` filter may not work reliably.** The swh-search language field is derived from repository metadata (e.g., GitHub's `linguist`-detected `programmingLanguage` exported in CodeMeta). GitHub's own linguist catalogue historically lacked a COBOL entry (confirmed in research literature analyzing SWH suffix statistics: "The linguist catalogue is missing entries for Cobol and Ada"). Many COBOL repositories on GitHub are not tagged with a language at all, or are tagged via manual topic labels. As a result, the language filter in `origin/search` likely returns an incomplete and potentially empty set for COBOL.

2. **`/api/1/content/<hash>/language/` returns no data.** The SWH API documentation explicitly notes this endpoint "currently returns no data." Language detection at the individual-file level via swh-indexer is not populated in the public API.

3. **`/api/1/content/<hash>/filetype/` uses MIME type only.** COBOL's MIME types (`text/x-cobol`, not universally standardized) may not be reliably detected. `file`/libmagic may identify COBOL as plain text.

4. **No filename-based search in the REST API.** There is no public REST endpoint to query "all files with extension `.cbl`." This query requires access to the graph dataset (Athena or local ORC).

5. **Athena dataset lags behind the live archive.** The ORC/Parquet exports are periodic snapshots, not real-time. The most recent public Athena snapshot may be months old.

6. **Dataset volume is large.** As of the 2022-12 export, the ORC dataset is ~11 TB. Athena charges ~$5 per TiB scanned. Full scans of `directory_entry` for COBOL filenames will cost several dollars per query.

7. **Content download from S3 requires AWS credentials** even though the bucket is public-access (requester-pays model may apply for large volumes; verify current bucket policy).

8. **COBOL source scarcity.** Open-source COBOL is genuinely sparse. Research notes that "the lack of availability of open source COBOL code" is a recognized problem. Most COBOL code is proprietary mainframe code, never archived publicly. Realistic yield from SWH will be smaller than for Python/JavaScript.

---

## Realistic extraction method

The recommended pipeline to build a COBOL corpus from Software Heritage without bulk-downloading the entire archive:

### Phase 1: Discover COBOL content hashes (Athena)

1. Register for AWS and set up Athena against the `s3://softwareheritage/` bucket (follow the official Athena setup guide: https://docs.softwareheritage.org/devel/swh-dataset/graph/athena.html).
2. Run the JOIN query above (Step 2 in the Athena section) against `directory_entry` and `content` tables, filtering on `.cbl`, `.cob`, `.cpy`, `.CBL`, `.COB` filename suffixes.
3. Export the result as a CSV: `(sha1, sha1_git, length, filename)`. This is the manifest — typically a manageable file of thousands to low-millions of rows.

### Phase 2: Supplement with origin-URL search (REST API)

4. Call `GET /api/1/origin/search/?q=cobol` (URL keyword search) to find origin URLs containing "cobol". Paginate with `?after=<last_url>` cursor.
5. Call `GET /api/1/origin/metadata-search/?fulltext=COBOL` for metadata hits.
6. For each discovered origin, fetch its latest snapshot → directory tree → enumerate files. Add any `.cbl/.cob/.cpy` file hashes not already in the manifest.

### Phase 3: Download content

7. For each unique `sha1` in the manifest, download:
   ```bash
   aws s3 cp s3://softwareheritage/content/<sha1> output/<sha1>
   ```
   Use `s5cmd` or parallel `xargs` for throughput. No SWH API rate limits apply to direct S3 reads.
8. Alternatively, for confirmed COBOL repositories (found via origin search), use the Vault API to cook and download the full directory as a tar.gz.

### Phase 4: Provenance and deduplication

9. The Athena `directory_entry` result gives occurrence counts per `(filename, sha1_git)` pair. Use this to deduplicate: each unique `sha1_git` is a unique file content regardless of how many repositories contain it (SWH's content-level deduplication is already done).
10. Optionally query `origin_visit_status` and the origin/snapshot/revision chain in Athena to recover provenance (which repo each file came from) for attribution.

### Rate limits and access notes

- REST API: anonymous users are rate-limited by IP. Register at https://archive.softwareheritage.org/ and use a Bearer token for higher limits.
- Athena / S3: pay-per-query; no rate limit for content downloads beyond AWS bandwidth.
- SWH Ethical Charter and CC-BY 4.0 apply to derived datasets.
- For large-scale research access, SWH offers a formal "bulk access" program; contact swh-infra@softwareheritage.org.

### Key reference URLs

- API overview: https://archive.softwareheritage.org/api/
- API docs: https://docs.softwareheritage.org/devel/api-reference.html
- Search query language: https://docs.softwareheritage.org/devel/swh-search/query-language.html
- Graph dataset: https://docs.softwareheritage.org/devel/swh-dataset/graph/index.html
- Athena setup: https://docs.softwareheritage.org/devel/swh-dataset/graph/athena.html
- AWS open data registry: https://registry.opendata.aws/software-heritage/
- SWH export dataset schema: https://docs.softwareheritage.org/devel/swh-export/graph/dataset.html
- SwhFS: https://docs.softwareheritage.org/devel/swh-fuse/index.html
- Vault API: https://docs.softwareheritage.org/devel/swh-vault/api.html
