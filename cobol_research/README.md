# COBOL Research Corpus

> Assembled in this repository on 2026-05-30 by a swarm of research sub-agents that
> queried public sources across the internet, cloned the actual COBOL repositories,
> and counted the source. It started from a simple question — *"how many COBOL files
> can you find?"* — which in **this** frontend repo is **zero**, and grew into a
> catalogue of essentially all the COBOL that is publicly discoverable.

## TL;DR

| Question | Answer |
|---|---|
| COBOL files originally in `ORG_Frontend` | **0** (it's a TypeScript/React + Vite frontend) |
| COBOL files cloned into this corpus so far | **1,441 files / ~520,000 lines** (9 repos, ~94 MB) |
| Expandable (via `clone_corpus.sh`, permissive repos) to | **several thousand** more files |
| COBOL files in the largest clean downloadable dataset | **X-COBOL v2: 5,195 files** (CC-BY-4.0, Zenodo `14269462`) |
| COBOL *repositories* on all of GitHub (mined by the X-COBOL study) | **~168–182** genuinely-COBOL repos |
| COBOL repos by GitHub's looser `language:COBOL` filter | **~9,025** (live GitHub API) |
| Lines of COBOL estimated to exist **in the world** | **220–850 billion** (mostly private, on mainframes) |

The headline finding from the research: **the public internet exposes well under ~1% of the
world's COBOL.** Most of it lives on private mainframes in banks, insurers, and governments and
was never committed anywhere crawlable — confirmed by Software Heritage's 24 *billion* archived
files containing almost no COBOL signal.

---

## Part 1 — The local corpus (`repos/`, git-ignored)

The raw third-party source is **not committed** to this frontend repo (see `.gitignore`): it mixes
licenses and totals tens of MB. Regenerate it any time with [`./clone_corpus.sh`](./clone_corpus.sh),
which is the authoritative manifest.

Currently cloned (licenses verified from each repo's own LICENSE file):

| Repo | License | Class | Size | COBOL files |
|---|---|---|--:|--:|
| [uwol/proleap-cobol-parser](https://github.com/uwol/proleap-cobol-parser) | MIT | permissive | 40 MB | **957** |
| [meyfa/CobolCraft](https://github.com/meyfa/CobolCraft) | MIT | permissive | 2 MB | 268 |
| [opensourcecobol/opensource-cobol](https://github.com/opensourcecobol/opensource-cobol) | GPL-2.0 | copyleft | 9.4 MB | 92 |
| [Martinfx/Cobol](https://github.com/Martinfx/Cobol) | GPL-3.0 | copyleft | 0.6 MB | 49 |
| [openmainframeproject/cobol-programming-course](https://github.com/openmainframeproject/cobol-programming-course) | CC-BY-4.0 | permissive | 36 MB | 33 |
| [writ3it/cobol-examples](https://github.com/writ3it/cobol-examples) | none | no-license | 0.5 MB | 32 |
| [otterkit/otterkit-cobol](https://github.com/otterkit/otterkit-cobol) | Apache-2.0 | permissive | 4.8 MB | 5 |
| [IBM/cobol-is-fun](https://github.com/IBM/cobol-is-fun) | Apache-2.0 | permissive | 0.4 MB | 3 |
| [pwittchen/learning-cobol](https://github.com/pwittchen/learning-cobol) | Apache-2.0 | permissive | 0.2 MB | 2 |
| **Total** | | | **~94 MB** | **1,441** |

`clone_corpus.sh` also pulls a curated **second wave** of permissive repos not yet counted above —
e.g. `DillonDepeel/Cobol-Programming-Collection` (MIT, ~68 MB games/software archive),
`aws-samples/aws-mainframe-modernization-carddemo` (Apache-2.0 bank app), `azac/cobol-on-wheelchair`
(MIT web framework), `lauryndbrown/Cisp` (MIT Lisp-in-COBOL), `exercism/cobol` (MIT katas),
`krisds/koopa` (BSD) — which take the corpus to several thousand files.

## Part 2 — How the files were counted

"COBOL file" is fuzzy, so the count is the **union** of two methods, then de-duplicated:

1. **Extension match** — `.cbl .cob .cobol .cpy .copy .cblle .pco` (+ uppercase variants).
2. **Content signature** — file contains `IDENTIFICATION DIVISION`, `PROCEDURE DIVISION`, or
   `WORKING-STORAGE SECTION`.

This catches COBOL hiding under non-standard extensions (e.g. GnuCOBOL/opensource-cobol autotest
`.at` files, IBM-i `.CBLLE`). It also produces a handful of **false positives** (~70 of 1,441):
compiler `.c/.cs/.java/.y/.l` files and proleap `.tree` AST dumps that merely *mention* a division
keyword. Net genuine COBOL ≈ **1,370**, of which ~1,214 are unambiguous by extension.

## Part 3 — How much COBOL exists, and how little is public

| Figure | Source |
|---|---|
| ~220 billion lines | Reuters, 2017 (long-standing baseline) |
| ~344 billion lines | active-use estimate, mostly financial institutions |
| 775–850 billion lines in *daily production* | Micro Focus / OpenText survey, 1,104 IT pros across 49 countries (92% call it "strategic") |
| 24,044,147,765 archived source files, ~**no** COBOL | Software Heritage counters + Shape-of-Code analysis (GitHub `linguist` has no COBOL entry) |
| 182 candidate / 168 actual COBOL repos on GitHub | X-COBOL study (arXiv 2306.04892) |

Detailed source extracts are in [`sources/`](./sources/):
`01_statistics_and_estimates.md`, `02_archives_and_language_stats.md`,
`03_background_history_demand.md`, `04_github_ecosystem_inventory.md`.

## Part 4 — Discovery catalogue (where public COBOL lives)

Twelve discovery agents mapped the landscape; full per-area catalogues with clone URLs and license
classes are in [`discovery/`](./discovery/):

| File | Area | Notable finds |
|---|---|---|
| `01_github_topics.md` | GitHub topic pages | 98 repos |
| `02_compilers_parsers.md` | compilers / parsers | proleap (~950 .cbl), GnuCOBOL mirrors, koopa (BSD) |
| `03_test_suites.md` | conformance suites | **NIST CCVS85** (~424 programs, license unclear) |
| `04_teaching.md` | courses / katas | Open Mainframe course, Exercism, IBM samples |
| `05_realworld_apps.md` | real-world apps | CobolCraft, cobol-on-wheelchair, AWS carddemo |
| `06_awesome_lists.md` | curated lists | *(in progress)* |
| `07_sourceforge.md` | SourceForge | GnuCOBOL 3.2 + NIST suite |
| `08_other_forges.md` | GitLab/Codeberg/Gitee | gitlab.cobolworx.com (gcobol toolchain) |
| `09_ml_datasets.md` | ML datasets | *(in progress)* The Stack v2, CodeNet |
| `10_academic_datasets.md` | academic datasets | **X-COBOL v2: 5,195 files, CC-BY-4.0** |
| `11_gov_historical.md` | government / historical | NIST CCVS85, IBM MVS 3.8j (public domain), CBT Tape |
| `12_software_heritage.md` | Software Heritage | extract by extension via Athena S3 dataset |

**Biggest clean (permissively-licensed) ways to get *more* COBOL:**
- **X-COBOL v2** — 5,195 files, CC-BY-4.0 — `pip install zenodo_get && zenodo_get 14269462`
- **IBM Project CodeNet** — COBOL subset, CDLA-Permissive-2.0 (~7 GB total)
- **CBT Tape** — ~900+ MVS freeware files incl. many COBOL utilities — cbttape.org
- **NIST CCVS85** — ~424 programs — `sourceforge.net/projects/gnucobol/files/nist/` *(license unclear — analysis only)*

## Directory layout

```
cobol_research/
├── README.md            # this index
├── clone_corpus.sh      # authoritative manifest + regenerates repos/
├── .gitignore           # excludes repos/ and downloads/ (license-encumbered + large)
├── sources/             # extracted facts from the article/API sources (committed)
├── discovery/           # per-area catalogues of public COBOL, with clone URLs (committed)
├── repos/               # raw cloned COBOL source — NOT committed; run clone_corpus.sh
└── downloads/           # space for dataset downloads (X-COBOL, etc.) — NOT committed
```

## ⚠️ Licensing notice

This corpus is gathered for **research/analysis**. Before vendoring any of it into a product:
- **Permissive** (MIT / Apache-2.0 / BSD / CC-BY-4.0 / Public-Domain) — generally safe; preserve
  attribution and license texts.
- **Copyleft** (GPL-2.0 / GPL-3.0 / AGPL / EPL) — do **not** vendor into a proprietary/distributed
  codebase without legal review.
- **No declared license** — defaults to "all rights reserved"; do not redistribute.
- **NIST CCVS85** — distributed freely by NIST but authored by the UK NCC; provenance is unclear, so
  treat as analysis-only.

That is exactly why `repos/` is git-ignored rather than committed into this frontend repo.
