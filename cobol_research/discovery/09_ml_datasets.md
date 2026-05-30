# ML / Code Datasets Containing COBOL — Discovery Report

**Date:** 2026-05-30  
**Scope:** Large-scale machine-learning and code corpora that include COBOL source files.  
**Method:** Web search + dataset-card inspection (HuggingFace mirror pages, arXiv papers, GitHub READMEs).  
**Note:** COBOL-specific byte/file counts are not individually published for most datasets; figures marked *(est.)* are inferred from total dataset characteristics and the known low-resource status of COBOL.

---

## Summary Table

| Dataset | COBOL Volume | License | Access Method |
|---|---|---|---|
| BigCode **The Stack v1.1** (`bigcode/the-stack`) | COBOL is 1 of 358 langs in 6.4 TB total; per-language size not published — est. low single-digit GB (COBOL is a "low-resource" lang in the corpus) | Multiple OSS licenses (Apache-2.0, MIT, BSD, etc.) per file; dataset itself: BigCode Open RAIL-M | Gated HF (agree to terms, log in). `load_dataset("bigcode/the-stack", data_dir="data/cobol", split="train")` |
| BigCode **The Stack v2 / StarCoderData-v2** (`bigcode/the-stack-v2`, `bigcode/the-stack-v2-dedup`) | COBOL is 1 of 619 languages; 900 B+ total tokens after dedup; per-COBOL count not published — est. larger than v1 given 7× size increase | Per-file OSS licenses; dataset access requires agreement with SoftwareHeritage / INRIA | Gated HF (accept SWH terms). `load_dataset("bigcode/the-stack-v2", "COBOL", split="train")`. File contents fetched via AWS S3 (SWH bucket); requires AWS credentials. |
| BigCode **StarCoderData** (`bigcode/starcoderdata`) | Training split of The Stack v1 dedup; 783 GB of code across 86 languages; COBOL present but per-lang size not published | BigCode Open RAIL-M | `load_dataset("bigcode/starcoderdata", data_dir="data/cobol", split="train")` — no gating required |
| **CodeParrot / github-code** (`codeparrot/github-code`) | 1 TB dataset across 30–32 languages from GitHub; **COBOL is NOT listed** among the 30 included languages (Go, Java, JS, Python, Ruby, PHP, C/C++, etc.) | Multiple per-file OSS licenses | `load_dataset("codeparrot/github-code", streaming=True)` — publicly accessible, no gating |
| **IBM Project CodeNet** (Zenodo / DAX) | 14 M code submissions across 55 languages including COBOL; COBOL submissions: small fraction (dominant langs are C++/Python/Java at 95%); total compressed 7.8 GB | CDLA-Permissive v2.0 (Apache-2.0 for tooling) | `wget` from IBM DAX / Zenodo DOI `10.5281/zenodo.4814770`. Extract: `tar -zxf Project_CodeNet.tar.gz`. Also on GitHub: `IBM/Project_CodeNet`. |
| **Google BigQuery — github_repos** (`bigquery-public-data.github_repos`) | ~2 B files / 1.5 TB contents from 2.8 M OSS GitHub repos; COBOL (.cob/.cbl) files present but no published per-language row count; queryable via SQL `WHERE language = 'COBOL'` in `languages` table | Each file retains its original OSS license; BigQuery ToS governs the public dataset access (free 1 TB/month query quota) | BigQuery console or API: `SELECT * FROM bigquery-public-data.github_repos.contents` + JOIN on `files` table for `language = 'COBOL'`. No download required — query in-place. |
| **XMainframe Mainframe-Training** (FSoft / Fsoft-AIC) | 236 M tokens of COBOL + mainframe docs (GitHub COBOL projects + online docs); combined with SlimOrca-Dedup for model training | Not explicitly stated (model weights are Apache-2.0; dataset release status unclear as of May 2026) | Referenced in paper arXiv:2408.04660; public portion is `Fsoft-AIC/MainframeBench` on HF (`load_dataset("Fsoft-AIC/MainframeBench")`). Full training set may not be independently released. |
| **Open Mainframe Project — cobol-code-dataset** (GitHub) | Production COBOL code; small repo (3 stars, 5 watchers); exact file count not published | CDLA-Permissive v2.0 | `git clone https://github.com/openmainframeproject/cobol-code-dataset` |
| **CobolCodeBench** (`harshini-kumar/CobolCodeBench`) | 46 COBOL programming tasks adapted from BigCodeBench-Hard; evaluation benchmark only, not a training corpus | Not confirmed (likely CC/MIT) | `load_dataset("harshini-kumar/CobolCodeBench")` |

---

## Dataset Notes

### BigCode — The Stack v1.1 (`bigcode/the-stack`)

- **Paper:** "The Stack: 3 TB of permissively licensed source code" arXiv:2211.15533  
- **URL:** https://huggingface.co/datasets/bigcode/the-stack  
- **Total size:** 6.4 TB (358 languages); v1.0 was 3.1 TB at 30 languages  
- **COBOL volume:** COBOL is confirmed present (extensions `.cob`, `.cbl`, `.cobol`, `.cpy`, `.ccp`). Per-language breakdown not published in the paper tables (only top-30 by size shown). A SantaCoder fine-tune on "The Stack COBOL subset" exists (`muhtasham/santacoder-finetuned-the-stack-cobol`), confirming a non-trivial COBOL partition.  
- **License:** Files retain their original permissive OSS licenses. The dataset card is governed by the BigCode OpenRAIL-M license.  
- **Access:** Gated — must log in to HuggingFace and accept terms. Then:
  ```python
  from datasets import load_dataset
  ds = load_dataset("bigcode/the-stack", data_dir="data/cobol", split="train")
  ```
- **Smol subset (no gating):** `bigcode/the-stack-smol` — 10,000 samples per language, 2.6 GB total; includes COBOL:
  ```python
  ds = load_dataset("bigcode/the-stack-smol", data_dir="data/cobol", split="train")
  ```

### BigCode — The Stack v2 (`bigcode/the-stack-v2`)

- **Paper:** "StarCoder2 and The Stack v2: The Next Generation" arXiv:2402.19173  
- **URL:** https://huggingface.co/datasets/bigcode/the-stack-v2  
- **Total size:** >3 B files across 619 programming languages from Software Heritage + GitHub PRs + Kaggle + docs; training set (after dedup + filters) is 900 B+ tokens  
- **COBOL volume:** COBOL is explicitly listed among supported low-resource languages. Per-language file/byte count not published. Given the dataset is 7× larger than v1, COBOL volume is materially larger.  
- **License:** Per-file OSS licenses. Access governed by a Software Heritage / INRIA data agreement.  
- **Access:** Gated — requires HF login + SWH agreement + AWS credentials (file contents stored in SWH S3 bucket):
  ```python
  from datasets import load_dataset
  ds = load_dataset("bigcode/the-stack-v2", "COBOL", split="train")
  # File content requires fetching from S3 using aws credentials
  ```
  Contact for bulk access: datasets@softwareheritage.org  
- **Deduped training version:** `bigcode/the-stack-v2-dedup` — recommended for training use.

### BigCode — StarCoderData (`bigcode/starcoderdata`)

- **URL:** https://huggingface.co/datasets/bigcode/starcoderdata  
- **Total size:** 783 GB of code across 86 languages + GitHub Issues + Jupyter notebooks + commits (~250 B tokens)  
- **COBOL:** Present (StarCoder trained on 80+ languages). No gating required for this dataset.  
- **License:** BigCode OpenRAIL-M  
- **Access:** Public, no login required:
  ```python
  ds = load_dataset("bigcode/starcoderdata", data_dir="data/cobol", split="train")
  ```

### CodeParrot / github-code (`codeparrot/github-code`)

- **URL:** https://huggingface.co/datasets/codeparrot/github-code  
- **Total size:** 1 TB across 30 programming languages  
- **COBOL:** **NOT included.** The 30 languages are C, C++, C#, Go, Java, JavaScript, Lua, PHP, Python, Ruby, Rust, Scala, TypeScript, and others — COBOL is absent.  
- **Access:** Public, no gating. `load_dataset("codeparrot/github-code", streaming=True)`

### IBM Project CodeNet

- **URL:** https://github.com/IBM/Project_CodeNet | Zenodo: https://zenodo.org/records/4814770  
- **Total size:** 7.8 GB compressed; ~14 M code submissions, 500 M lines of code, 55 languages  
- **COBOL volume:** COBOL is among the 55 languages. The paper (arXiv:2105.12655) reports roughly 727 accepted COBOL submissions across ~325 problems — a very small fraction of the 14 M total (95% of submissions are in C++/Python/Java/C/Ruby/C#). COBOL volume is estimated in the thousands of files / tens of MB.  
- **License:** CDLA-Permissive v2.0 (dataset); Apache-2.0 (tooling)  
- **Access:**
  ```bash
  # From Zenodo
  wget https://zenodo.org/records/4814770/files/Project_CodeNet.tar.gz
  tar -zxf Project_CodeNet.tar.gz
  # Or clone tooling repo
  git clone https://github.com/IBM/Project_CodeNet
  ```

### Google BigQuery — github_repos

- **URL:** https://console.cloud.google.com/bigquery?p=bigquery-public-data&d=github_repos  
- **Total size:** 2.8 M+ OSS GitHub repos; contents table ~1.5 TB (all non-binary files < 1 MB)  
- **COBOL:** Present. Query COBOL files via SQL:
  ```sql
  SELECT f.repo_name, f.path, c.content
  FROM `bigquery-public-data.github_repos.files` f
  JOIN `bigquery-public-data.github_repos.contents` c ON f.id = c.id
  WHERE LOWER(f.path) LIKE '%.cbl'
     OR LOWER(f.path) LIKE '%.cob'
     OR LOWER(f.path) LIKE '%.cobol'
  LIMIT 1000;
  ```
  Volume unknown without running the query; only OSS-licensed repos included.  
- **License/Terms:** Each file retains its original OSS license. Google BigQuery Public Data ToS. 1 TB free query quota/month; full contents scan is expensive.  
- **Access:** BigQuery console (no download needed) or BigQuery API via `google-cloud-bigquery` Python library. No bulk export offered for free tier.

### XMainframe Mainframe-Training (Fsoft-AIC)

- **Paper:** arXiv:2408.04660  
- **URL (public benchmark only):** https://huggingface.co/datasets/Fsoft-AIC/MainframeBench  
- **COBOL volume:** 236 M tokens in the full Mainframe-Training corpus (COBOL code from GitHub + mainframe docs). The public MainframeBench contains ~7,052 test samples across MCQ, QA, and COBOL summarization tasks — evaluation only, not raw code.  
- **License:** MainframeBench — MIT. Full training set release status not confirmed.  
- **Access:**
  ```python
  ds = load_dataset("Fsoft-AIC/MainframeBench")
  ```

### Open Mainframe Project — cobol-code-dataset

- **URL:** https://github.com/openmainframeproject/cobol-code-dataset  
- **COBOL volume:** Production COBOL code; exact count not published (small repo, early-stage as of 2025–2026)  
- **License:** CDLA-Permissive v2.0  
- **Access:** `git clone https://github.com/openmainframeproject/cobol-code-dataset`

---

## Datasets Confirmed NOT to Include COBOL

| Dataset | Reason |
|---|---|
| CodeSearchNet (`code-search-net/code_search_net`) | Only 6 languages: Go, Java, JS, PHP, Python, Ruby |
| HumanEval / MBPP | Python only |
| CodeParrot/github-code | 30 languages, COBOL excluded |

---

## Access Priority Recommendation

For the largest raw COBOL corpus for LLM training or analysis:

1. **The Stack v2 dedup** (`bigcode/the-stack-v2-dedup`) — largest available; requires HF account + SWH agreement + AWS S3 credentials.  
2. **The Stack v1.1** (`bigcode/the-stack`) — simpler gating; 6.4 TB total; COBOL subset available via `data_dir="data/cobol"`.  
3. **StarCoderData** (`bigcode/starcoderdata`) — no gating; 783 GB; COBOL present.  
4. **Google BigQuery github_repos** — queryable without download; covers all public OSS repos on GitHub, not just pre-curated languages.  
5. **IBM Project CodeNet** — small COBOL subset (~hundreds of files); good for code-translation benchmarking.

---

*Sources: arXiv:2211.15533, arXiv:2402.19173, arXiv:2105.12655, arXiv:2408.04660, arXiv:2604.03986; huggingface.co dataset cards; github.com/IBM/Project_CodeNet; github.com/openmainframeproject/cobol-code-dataset; cloud.google.com/blog/topics/public-datasets/github-on-bigquery.*
