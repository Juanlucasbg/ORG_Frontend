# Academic & MSR COBOL Datasets — Discovery Report

**Date generated:** 2026-05-30
**Scope:** Academic / research COBOL datasets, mining-software-repositories (MSR) artifacts, benchmark suites, and university/industry corpora. Discovery only — no downloads performed.

---

## Summary Table

| # | Dataset Name | DOI / URL | Contents | License | Download Method |
|---|---|---|---|---|---|
| 1 | **X-COBOL v1** (2023) | [10.5281/zenodo.7968845](https://zenodo.org/records/7968845) | 84 repos, 1,255 COBOL files, commit/issue/PR/release metadata | CC BY 4.0 | Zenodo direct download |
| 2 | **X-COBOL v2** (2024) | [10.5281/zenodo.14269462](https://zenodo.org/records/14269462) | 168 repos, 5,195 COBOL files, expanded metadata | CC BY 4.0 | Zenodo direct download |
| 3 | **IBM Project CodeNet** | [github.com/IBM/Project_CodeNet](https://github.com/IBM/Project_CodeNet) | 14M code samples, 500M LOC, 55 languages incl. COBOL & FORTRAN | CDLA-Permissive-2.0 | IBM Data Asset eXchange (DAX) / GitHub |
| 4 | **MainframeBench** (XMainframe, 2024) | [HF: Fsoft-AIC/MainframeBench](https://huggingface.co/datasets/Fsoft-AIC/MainframeBench) | MCQ, QA, COBOL code summarization tasks; model instruct set ~53,351 entries | Apache 2.0 (inferred from XMainframe repo) | `datasets.load_dataset("Fsoft-AIC/MainframeBench")` |
| 5 | **COBOLEval** (BloopAI, 2024) | [github.com/BloopAI/COBOLEval](https://github.com/BloopAI/COBOLEval) | HumanEval ported to COBOL; ~164 programming tasks with test harness | MIT (via BloopAI/zorse-project) | `git clone` GitHub |
| 6 | **CobolCodeBench** (2025) | [HF: harshini-kumar/CobolCodeBench](https://huggingface.co/datasets/harshini-kumar/CobolCodeBench) | 46 COBOL tasks adapted from BigCodeBench-Hard; financial/enterprise focus | Not explicitly stated (check HF card) | `datasets.load_dataset("harshini-kumar/CobolCodeBench")` |
| 7 | **COBOL-JavaTrans** (2025) | [github.com/COBOL-Coder](https://github.com/COBOL-Coder) — `evaluation/data/COBOL-JavaTrans.jsonl` | 143 bidirectional COBOL↔Java translation task pairs (from 164 HumanEval tasks), with test cases | Not yet explicitly stated | Clone COBOL-Coder repo; file at `evaluation/data/` |
| 8 | **LegacyCOBOL 2024 Corpus** | arxiv 2504.11335 (no public release found) | 50,000 COBOL files (40k from 5,000 GitHub/Bitbucket repos; 10k from banking/insurance); 42,000 usable after dedup | **Not publicly released** (enterprise partnership data) | Not available — proprietary enterprise portion |
| 9 | **Open Mainframe Project COBOL Dataset** | [github.com/openmainframeproject/cobol-code-dataset](https://github.com/openmainframeproject/cobol-code-dataset) | Production COBOL + JCL/REXX/PL/I; PII-cleaned; permissively licensed; size growing (community-contributed) | CDLA-Permissive-2.0 | `git clone` GitHub |
| 10 | **COBOL to Java Pairs (HF community)** | [HF: Satya25/cobol-to-java-dataset](https://huggingface.co/datasets/Satya25/cobol-to-java-dataset) · [HF: sidharthsingh1892/cobol_to_java_train_utf](https://huggingface.co/datasets/sidharthsingh1892/cobol_to_java_train_utf) | COBOL↔Java parallel pairs for fine-tuning; exact count not published | Unknown (check HF card) | `datasets.load_dataset(...)` |

---

## Per-Dataset Notes

### 1 & 2 — X-COBOL (v1 2023, v2 2024)

**Paper:** "X-COBOL: A Dataset of COBOL Repositories"
**Authors:** Mir Sameed Ali, Nikhil Manjunath, Sridhar Chimalakonda (IIT Tirupati)
**arXiv:** https://arxiv.org/abs/2306.04892
**Venue:** Posted June 2023 (arXiv preprint; associated with MSR-style dataset paper track).

- **v1 (Zenodo 7968845):** 84 GitHub repositories, 1,255 `.cbl`/`.cob` files, metadata: commits, issues, pull requests, releases. Published May 2023.
- **v2 (Zenodo 14269462):** Expanded to 168 repositories, 5,195 COBOL files. Published December 5, 2024. 611 views / 351 downloads as of late 2024.
- Both versions licensed **CC BY 4.0** — free to use with attribution.
- **Concept DOI** (always resolves to latest version): https://doi.org/10.5281/zenodo.7968844 (the parent record). Use the versioned DOIs above for reproducibility.
- Download: click "Download all" button on Zenodo record page, or use `zenodo_get 7968845` / `zenodo_get 14269462`.

**Note on "182 repos":** The abstract of the arXiv preprint references screening ~182 candidate repositories from GitHub before applying quality filters, resulting in 84 included in v1. The v2 update re-ran collection and grew to 168 included repositories.

---

### 3 — IBM Project CodeNet

**Paper:** "CodeNet: A Large-Scale AI for Code Dataset for Learning a Diversity of Coding Tasks" (NeurIPS 2021)
**GitHub:** https://github.com/IBM/Project_CodeNet
**Data host:** IBM Data Asset eXchange (DAX) — https://developer.ibm.com/exchanges/data/all/project-codenet/

- 14 million code samples, ~500 million lines of code, 55 languages. COBOL is included as a legacy language alongside FORTRAN and Pascal (exact COBOL sample count not separately published — see `assets/Project_CodeNet_statistics.xlsx` in the GitHub repo).
- Problems are from AIZU Online Judge and AtCoder; each sample is an attempted solution.
- **License: CDLA-Permissive-2.0** — permissive open data license, safe for ML training use.
- **Download:** ~7 GB compressed. Available via the IBM DAX portal and directly via `wget` from DAX CDN. See GitHub README for exact URLs.

---

### 4 — MainframeBench (XMainframe project)

**Paper:** "XMainframe: A Large Language Model for Mainframe Modernization" (arXiv 2408.04660, FPT Software AI Center, 2024)
**GitHub:** https://github.com/FSoft-AI4Code/XMainframe
**HuggingFace:** https://huggingface.co/datasets/Fsoft-AIC/MainframeBench

- Three sub-tasks: **Multiple Choice Questions** (mainframe knowledge), **Question Answering**, and **COBOL Code Summarization**.
- Mainframe-Instruct training set: 53,351 entries total.
- XMainframe achieves 6× higher COBOL summarization BLEU vs GPT-3.5.
- Download: `from datasets import load_dataset; ds = load_dataset("Fsoft-AIC/MainframeBench")`

---

### 5 — COBOLEval (BloopAI / Zorse Project)

**Blog post:** https://bloop.ai/blog/evaluating-llms-on-cobol
**GitHub:** https://github.com/BloopAI/COBOLEval (also mirrored at github.com/zorse-project/COBOLEval)

- Direct COBOL port of OpenAI HumanEval (~164 tasks). Includes Python-to-COBOL transpiler and evaluation harness.
- Enables pass@k evaluation for COBOL code generation.
- **License: MIT**
- Download: `git clone https://github.com/BloopAI/COBOLEval`

---

### 6 — CobolCodeBench

**HuggingFace:** https://huggingface.co/datasets/harshini-kumar/CobolCodeBench
**GitHub framework:** https://github.com/CobolCodeBench/CobolCodeBench-Framework

- 46 COBOL programming tasks adapted from BigCodeBench-Hard. Financial/enterprise focus (bank calculations, data processing).
- Execution-based evaluation for code generation.
- License: not explicitly listed; check dataset card.

---

### 7 — COBOL-JavaTrans

**Paper:** "COBOL-Coder: Domain-Adapted Large Language Models for COBOL Code Generation and Translation" (arXiv 2604.03986, April 2026)
**GitHub org:** https://github.com/COBOL-Coder

- **First bidirectional COBOL↔Java translation benchmark.**
- 143 task pairs derived from HumanEval; both COBOL and Java implementations manually validated for compilability and functional correctness.
- Located at `evaluation/data/COBOL-JavaTrans.jsonl` in the COBOL-Coder repository.
- Training data pipeline: 40,829 raw COBOL files → MinHash dedup → compiler-validated → 31,492 compilable programs.
- License: not yet explicitly stated; check GitHub repo.

---

### 8 — LegacyCOBOL 2024 Corpus

**Paper:** "Code Reborn: AI-Driven Legacy Systems Modernization from COBOL to Java" (arXiv 2504.11335, 2025)

- 50,000 COBOL files: 40,000 from public GitHub/Bitbucket repos (300+ stars), 10,000 from banking/insurance industry partners.
- 42,000 files usable after cleaning and deduplication.
- **NOT publicly released.** Enterprise partnership data with confidentiality constraints. The paper describes the corpus methodology but does not provide a download link or DOI.
- Researchers needing equivalent data should use X-COBOL v2 + Open Mainframe Project COBOL Dataset.

---

### 9 — Open Mainframe Project COBOL Code Dataset

**GitHub:** https://github.com/openmainframeproject/cobol-code-dataset
**Org:** Linux Foundation Open Mainframe Project

- Community-curated production COBOL code plus associated mainframe languages (JCL, REXX, PL/I).
- Goal: permissively licensed, PII-cleaned, provenance-verified COBOL for LLM fine-tuning.
- Size is growing (community-contributed; no fixed snapshot size published as of May 2026).
- **License: CDLA-Permissive-2.0** — explicit ML training use allowed.
- Download: `git clone https://github.com/openmainframeproject/cobol-code-dataset`

---

### 10 — Community HuggingFace COBOL↔Java Pairs

**Satya25/cobol-to-java-dataset:** https://huggingface.co/datasets/Satya25/cobol-to-java-dataset
**sidharthsingh1892/cobol_to_java_train_utf:** https://huggingface.co/datasets/sidharthsingh1892/cobol_to_java_train_utf

- Community-uploaded parallel COBOL↔Java pairs, used to fine-tune models (e.g., `cobol-to-java-llama-2-7b`).
- Exact size and license unclear — verify on HuggingFace dataset cards before use.
- These are practitioner datasets, not peer-reviewed academic artifacts.

---

## Download URLs

```
# X-COBOL v1 (Zenodo, CC BY 4.0)
https://zenodo.org/records/7968845
# Direct download (all files):
https://zenodo.org/api/records/7968845/files-archive

# X-COBOL v2 (Zenodo, CC BY 4.0)
https://zenodo.org/records/14269462
# Direct download (all files):
https://zenodo.org/api/records/14269462/files-archive

# zenodo_get CLI download method:
pip install zenodo_get
zenodo_get 7968845   # v1
zenodo_get 14269462  # v2

# IBM Project CodeNet (CDLA-Permissive-2.0)
https://github.com/IBM/Project_CodeNet
# DAX README (contains wget links):
https://dax-cdn.cdn.appdomain.cloud/dax-project-codenet/1.0.0/readme.html

# COBOLEval (MIT)
git clone https://github.com/BloopAI/COBOLEval

# COBOL-Coder + COBOL-JavaTrans benchmark
https://github.com/COBOL-Coder
# Benchmark file: evaluation/data/COBOL-JavaTrans.jsonl

# MainframeBench (HuggingFace)
from datasets import load_dataset
load_dataset("Fsoft-AIC/MainframeBench")

# CobolCodeBench (HuggingFace)
load_dataset("harshini-kumar/CobolCodeBench")

# Open Mainframe Project COBOL Dataset (CDLA-Permissive-2.0)
git clone https://github.com/openmainframeproject/cobol-code-dataset

# Community COBOL↔Java pairs (HuggingFace — verify license)
load_dataset("Satya25/cobol-to-java-dataset")
load_dataset("sidharthsingh1892/cobol_to_java_train_utf")
```

---

## Adversarial Verification Notes

| Claim | Verdict | Evidence |
|---|---|---|
| X-COBOL v1 has 182 repos | **PARTIALLY CORRECT** | 182 were screened; 84 passed quality filters and are in the dataset. v2 has 168. | 
| X-COBOL is from MSR 2023 | **UNCONFIRMED** | arXiv preprint June 2023; venue listed as arXiv, not confirmed in MSR 2023 proceedings via DBLP. |
| LegacyCOBOL corpus is public | **FALSE** | arXiv 2504.11335 describes methodology; no public DOI or download link found. |
| IBM CodeNet license is CDLA-Permissive | **CONFIRMED** | IBM/CODAIT re-licensed to CDLA-Permissive-2.0 (Linux Foundation announcement). |
| COBOL-JavaTrans is 143 pairs | **CONFIRMED** | Stated explicitly in COBOL-Coder paper (arXiv 2604.03986). |

---

## Sources

- [arXiv 2306.04892 — X-COBOL paper](https://arxiv.org/abs/2306.04892)
- [Zenodo 7968845 — X-COBOL v1](https://zenodo.org/records/7968845)
- [Zenodo 14269462 — X-COBOL v2](https://zenodo.org/records/14269462)
- [arXiv 2604.03986 — COBOL-Coder / COBOL-JavaTrans](https://arxiv.org/abs/2604.03986)
- [arXiv 2408.04660 — XMainframe / MainframeBench](https://arxiv.org/abs/2408.04660)
- [arXiv 2504.11335 — Code Reborn COBOL-to-Java (LegacyCOBOL)](https://arxiv.org/abs/2504.11335)
- [arXiv 2511.18488 — COBOL perturbation robustness](https://arxiv.org/abs/2511.18488)
- [HuggingFace: Fsoft-AIC/MainframeBench](https://huggingface.co/datasets/Fsoft-AIC/MainframeBench)
- [HuggingFace: harshini-kumar/CobolCodeBench](https://huggingface.co/datasets/harshini-kumar/CobolCodeBench)
- [GitHub: BloopAI/COBOLEval](https://github.com/BloopAI/COBOLEval)
- [GitHub: COBOL-Coder org](https://github.com/COBOL-Coder)
- [GitHub: IBM/Project_CodeNet](https://github.com/IBM/Project_CodeNet)
- [GitHub: openmainframeproject/cobol-code-dataset](https://github.com/openmainframeproject/cobol-code-dataset)
- [bloop.ai blog — Evaluating LLMs on COBOL](https://bloop.ai/blog/evaluating-llms-on-cobol)
- [IBM Research — Introducing Project CodeNet](https://research.ibm.com/blog/codenet-ai-for-code)
