# COBOL Test Suites & Conformance Corpora — Discovery Report

> Discovery date: 2026-05-30. No cloning performed — URLs only.

---

## Overview

The table below covers the principal public COBOL test/conformance corpora found across GitHub, GitLab, SourceForge, and Savannah. Columns:

- **Owner/Repo** — canonical form usable for cloning
- **Host** — platform
- **HTTPS Clone URL** — direct clone URL
- **License Class** — PERMISSIVE / COPYLEFT / NONE / PUBLIC-DOMAIN / UNCLEAR
- **Approx Size** — tarball / disk size where known
- **Est. COBOL Files** — programs/tasks (`.cob`, `.cbl`, `.cobol`)
- **Notes**

| # | Owner / Repo | Host | HTTPS Clone URL | License Class | Approx Size | Est. COBOL Files | Notes |
|---|---|---|---|---|---|---|---|
| 1 | **NIST CCVS85** (`newcob.val`) | SourceForge (GnuCOBOL mirror) | `https://sourceforge.net/projects/gnucobol/files/nist/newcob.val.tar.gz/download` | **UNCLEAR** (see §NIST note) | 3.4 MB gz / ~29 MB expanded | **~424 programs / 9 700+ tests** | Canonical test archive; not a git repo — download directly. Produced by National Computing Centre, UK; distributed by NIST. Free to use; copyright *may* be reserved (not confirmed US-govt public domain). |
| 2 | `gnucobol/gnucobol` (SVN trunk) | Savannah (GNU) | `svn co svn://svn.savannah.gnu.org/gnucobol/trunk` _(SVN, not git)_ | **COPYLEFT** (GPL-3.0 / LGPL-3.0 / GFDL-1.3) | ~30 MB source | **~424 COBOL programs** in `tests/cobol85/` (NIST suite downloaded at build time) | Official GnuCOBOL project. NIST tests auto-downloaded by `make test`. ~9 740 test assertions passing. |
| 3 | `OCamlPro/gnucobol` | GitHub | `https://github.com/OCamlPro/gnucobol.git` | **COPYLEFT** (LGPL-3.0 / GPL-3.0) | — | Same NIST suite in `tests/cobol85/` | Active GitHub mirror of GnuCOBOL SourceForge SVN; 947+ commits on gnucobol-3.x branch. |
| 4 | `paulsmith/gnucobol` | GitHub | `https://github.com/paulsmith/gnucobol.git` | **COPYLEFT** (GPL-3.0) | — | Same `tests/cobol85/` structure | SVN-to-git mirror; older snapshot. |
| 5 | `opensourcecobol/opensource-cobol` | GitHub | `https://github.com/opensourcecobol/opensource-cobol.git` | **COPYLEFT** (GPL-2.0 / LGPL-2.1) | — | COBOL85 suite in `tests/cobol85/` (optional, mirrors NIST archive) | Japan-specific COBOL extensions forked from OpenCOBOL 2012. Last release v1.5.2J (2019). 84 stars. |
| 6 | `opensourcecobol/opensourcecobol4j` | GitHub | `https://github.com/opensourcecobol/opensourcecobol4j.git` | **COPYLEFT** (GPL-3.0 / LGPL-3.0) | — | **361 COBOL test programs** (NIST COBOL85 suite; 8 804 passing tests) | COBOL-to-Java compiler. Actively maintained (v1.1.20, Apr 2026). 86.4% COBOL codebase. 121 stars. |
| 7 | `krisds/koopa` | GitHub | `https://github.com/krisds/koopa.git` | **PERMISSIVE** (BSD) + UNCLEAR for NIST subset | — | NIST CCVS85 programs **split into individual files** in `testsuite/cobol85/` | COBOL parser generator; 94.4% COBOL. Latest release May 2026. Valuable because NIST archive split into per-program files. 55 stars. |
| 8 | `exercism/cobol` | GitHub | `https://github.com/exercism/cobol.git` | **PERMISSIVE** (MIT) | — | **~80+ exercises** (38.1% COBOL; 147 commits) | Official Exercism COBOL track. Curated learning exercises, not conformance tests. 11 stars, 26 forks. |
| 9 | `acmeism/RosettaCodeData` | GitHub | `https://github.com/acmeism/RosettaCodeData.git` | **NONE declared** (content is CC-BY-SA from rosettacode.org) | — | **~500+ `.cobol` files** (tasks from ~750 Rosetta Code programming tasks; COBOL is one of ~550 languages) | All Rosetta Code examples organized by Task/Language. COBOL solutions under `Task/*/COBOL/`. Check individual task licenses. |
| 10 | `PhaseChangeSoftware/cobol-defects-suite` | GitHub | `https://github.com/PhaseChangeSoftware/cobol-defects-suite.git` | **PERMISSIVE** (MIT) | — | **43 COBOL programs** (real-world defect reproductions) | OpenCBS benchmark. Programs categorized by defect type. 5 directories: COBOL_Programs, COBOL_Copybooks, JCL_Files, Test_Files, Test_Tables. Last updated Jan 2026. |
| 11 | `sentientsergio/COBOL-Legacy-Benchmark-Suite` | GitHub | `https://github.com/sentientsergio/COBOL-Legacy-Benchmark-Suite.git` | **NONE** (placeholder "[Appropriate License]") | — | **96.1% COBOL** (Investment Portfolio Mgmt System; batch, online, utility, test, common programs) | Production-grade LLM modernization benchmark. Simulates bank/insurance complexity: VSAM, DB2, CICS. 15 commits. No license declared — use at own risk. |
| 12 | `callumio/advent-of-cobol` | GitHub | `https://github.com/callumio/advent-of-cobol.git` | **PERMISSIVE** (MIT) | — | **~25 `.cbl` files** (AoC 2022; 99.3% COBOL) | Advent of Code 2022 solutions in GnuCOBOL. 18 commits. |
| 13 | `COBOL-Erik/AOC2021` | GitHub | `https://github.com/COBOL-Erik/AOC2021.git` | **NONE declared** | — | **~12 `.cbl` files** (AoC 2021; 100% COBOL) | 15 commits. |
| 14 | `cschneid-the-elder/aoc-2021` | GitHub | `https://github.com/cschneid-the-elder/aoc-2021.git` | **PERMISSIVE** (MIT) | — | **25 `.cbl` files** (AoC 2021 days 1–16) | 39 commits. Complete day-by-day solutions. |
| 15 | `dichro/advent-of-cobol` | GitHub | `https://github.com/dichro/advent-of-cobol.git` | **NONE declared** | — | **~25 `.cob` files** (AoC 2019) | 7 commits. |
| 16 | `openmainframeproject/cobol-check` | GitHub | `https://github.com/openmainframeproject/cobol-check.git` | **PERMISSIVE** (Apache-2.0) | — | 14.1% COBOL (unit-test framework + sample programs) | Archived May 2026 (Emeritus state). 107 stars, 40 forks. Framework, not a corpus per se, but includes sample COBOL programs. |

---

## NIST CCVS85 License Note

The NIST CCVS85 (COBOL Compiler Validation System 1985) test suite (`newcob.val`) was **produced by the National Computing Centre, UK** — not directly by US government employees. NIST served as US distributor via `itl.nist.gov`. Because the suite's primary author is a UK body (not a US government work), it does **not** automatically qualify as US-government public-domain software under 17 U.S.C. §105. The distribution page states "can be used free; copyrights are likely reserved." Treat as **UNCLEAR / effectively free-to-use** pending any formal license clarification. All downstream mirrors (GnuCOBOL SourceForge, OCamlPro, krisds/koopa, etc.) inherit this ambiguity for the NIST subset.

---

## Clone URLs (deduplicated)

```
# NIST CCVS85 raw archive (not a git repo — wget/curl download)
https://sourceforge.net/projects/gnucobol/files/nist/newcob.val.tar.gz/download

# GnuCOBOL — official SVN (includes NIST tests)
svn://svn.savannah.gnu.org/gnucobol/trunk

# GnuCOBOL — GitHub mirrors
https://github.com/OCamlPro/gnucobol.git
https://github.com/paulsmith/gnucobol.git

# opensource-cobol (C → C compiler, Japan extensions)
https://github.com/opensourcecobol/opensource-cobol.git

# opensource-cobol 4J (COBOL → Java compiler, includes NIST suite)
https://github.com/opensourcecobol/opensourcecobol4j.git

# Koopa COBOL parser (NIST suite pre-split into per-program files)
https://github.com/krisds/koopa.git

# Exercism COBOL track exercises
https://github.com/exercism/cobol.git

# RosettaCode data (all tasks, all languages incl. COBOL)
https://github.com/acmeism/RosettaCodeData.git

# OpenCBS COBOL defects benchmark (MIT)
https://github.com/PhaseChangeSoftware/cobol-defects-suite.git

# COBOL Legacy Benchmark Suite (LLM modernization, NO LICENSE)
https://github.com/sentientsergio/COBOL-Legacy-Benchmark-Suite.git

# Advent of Code — COBOL solutions repos
https://github.com/callumio/advent-of-cobol.git
https://github.com/COBOL-Erik/AOC2021.git
https://github.com/cschneid-the-elder/aoc-2021.git
https://github.com/dichro/advent-of-cobol.git

# COBOL-Check unit testing framework (Apache-2.0, archived)
https://github.com/openmainframeproject/cobol-check.git
```

---

## Size / File-Count Rankings (largest COBOL-file collections)

| Rank | Source | COBOL File Count | License Class |
|------|--------|-----------------|---------------|
| 1 | NIST CCVS85 `newcob.val` + GnuCOBOL mirrors | **~424 programs / 9 748 test assertions** | UNCLEAR (free-to-use) |
| 2 | `opensourcecobol/opensourcecobol4j` | **~361 COBOL programs** (NIST subset; 8 804 tests) | COPYLEFT (GPL-3.0) |
| 3 | `acmeism/RosettaCodeData` | **~500+ `.cobol` files** across 750+ tasks | NONE declared (CC-BY-SA content) |
| 4 | `krisds/koopa` | NIST programs individually split (qty = CCVS85 total) | PERMISSIVE (BSD) + UNCLEAR subset |
| 5 | `exercism/cobol` | ~80+ exercises | PERMISSIVE (MIT) |
| 6 | `sentientsergio/COBOL-Legacy-Benchmark-Suite` | ~50–100 files (96.1% COBOL) | NONE |
| 7 | AoC repos combined (4 repos) | ~85–90 `.cbl`/`.cob` files | Mixed MIT / NONE |
| 8 | `PhaseChangeSoftware/cobol-defects-suite` | 43 programs | PERMISSIVE (MIT) |

---

## Sources Consulted

- [GnuCOBOL NIST files at SourceForge](https://sourceforge.net/projects/gnucobol/files/nist/)
- [NIST Cobol Available Test Suite page](https://www.itl.nist.gov/div897/ctg/cobol_form.htm)
- [GnuCOBOL project home](https://gnucobol.sourceforge.io/)
- [GnuCOBOL on Savannah (SVN)](https://savannah.gnu.org/projects/gnucobol/)
- [OCamlPro/gnucobol GitHub](https://github.com/OCamlPro/gnucobol)
- [opensourcecobol/opensource-cobol GitHub](https://github.com/opensourcecobol/opensource-cobol)
- [opensourcecobol/opensourcecobol4j GitHub](https://github.com/opensourcecobol/opensourcecobol4j)
- [krisds/koopa GitHub](https://github.com/krisds/koopa)
- [exercism/cobol GitHub](https://github.com/exercism/cobol)
- [acmeism/RosettaCodeData GitHub](https://github.com/acmeism/RosettaCodeData)
- [PhaseChangeSoftware/cobol-defects-suite GitHub](https://github.com/PhaseChangeSoftware/cobol-defects-suite)
- [sentientsergio/COBOL-Legacy-Benchmark-Suite GitHub](https://github.com/sentientsergio/COBOL-Legacy-Benchmark-Suite)
- [callumio/advent-of-cobol GitHub](https://github.com/callumio/advent-of-cobol)
- [COBOL-Erik/AOC2021 GitHub](https://github.com/COBOL-Erik/AOC2021)
- [cschneid-the-elder/aoc-2021 GitHub](https://github.com/cschneid-the-elder/aoc-2021)
- [openmainframeproject/cobol-check GitHub](https://github.com/openmainframeproject/cobol-check)
- [OpenCBS arXiv paper](https://arxiv.org/abs/2206.06260)
