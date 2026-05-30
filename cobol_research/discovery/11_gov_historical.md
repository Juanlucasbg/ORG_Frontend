# Government & Historical COBOL — Discovery Report
**Generated:** 2026-05-30  
**Method:** WebSearch + WebFetch multi-angle sweep (5 search angles, 15+ sources fetched/attempted)

---

## 1. US Federal Government Open-Source COBOL

| Name | URL | Host | LICENSE/Rights | Approx Size | Est. COBOL Files | Notes |
|------|-----|------|----------------|-------------|-------------------|-------|
| IRS Direct File | https://github.com/IRS-Public/direct-file | GitHub | US Gov Work (public domain in USA) | Large (multi-lang) | 0 | No COBOL — modern stack (Scala, Java, TypeScript). Tax filing frontend, not the legacy COBOL backend. |
| US DOL UI Claimant Experience Pilot | https://github.com/USDepartmentofLabor/ui-claimant-experience-pilot | GitHub | GPL-3.0 | ~1,295 commits | 0 | No COBOL — Python/TypeScript. Archived 2024. Modernization layer only. |
| US DOL UI Claimant Experience NJ Pilot | https://github.com/USDepartmentofLabor/UI-Claimant-Experience-NJ-Pilot | GitHub | Not stated | Medium | 0 | Modern UI layer for NJ unemployment intake. No COBOL. |
| Code.gov Federal Source Code Portal | https://code.gov | code.gov | N/A (portal) | N/A | Unknown | Aggregates agency repos. COBOL agencies (IRS, SSA, Treasury, VA, USDA) hold COBOL but have NOT released it via code.gov as of 2026. No publicly queryable COBOL on the portal. |
| GSA code-gov Open Source Toolkit | https://github.com/GSA/code-gov-open-source-toolkit | GitHub | CC0 / US Gov Work | Small | 0 | Policy docs only, no COBOL source. |

**Key finding:** No US federal agency has open-sourced its production COBOL codebase. The IRS (~160 COBOL apps, ~60M lines at SSA) remains proprietary. DOL unemployment modernization repos contain zero COBOL.

---

## 2. UK / EU Government COBOL

| Name | URL | Host | LICENSE/Rights | Approx Size | Est. COBOL Files | Notes |
|------|-----|------|----------------|-------------|-------------------|-------|
| HMRC VATBatch (2,100 COBOL programs) | Not released | — | NONE / Proprietary | ~2,100 programs | ~2,100 | Under active use; HMRC explicitly will NOT open source it. |
| UK GOV.UK / GDS Repositories | https://github.com/alphagov | GitHub | MIT / Open Government Licence | Varies | 0 | GDS repos are modern (Ruby, Python). No COBOL releases found. |
| EU FOSSEPS Open Source Catalogue | https://interoperable-europe.ec.europa.eu | EU Portal | Various (640+ solutions) | Large | 0 known | No COBOL-specific entries found. Catalogue covers modern stacks. |

**Key finding:** No UK or EU government has open-sourced production COBOL. HMRC VATBatch is the most famous example of government COBOL that has been explicitly withheld.

---

## 3. US State Government COBOL

| Name | URL | Host | LICENSE/Rights | Approx Size | Est. COBOL Files | Notes |
|------|-----|------|----------------|-------------|-------------------|-------|
| New Jersey Unemployment COBOL | Not released | — | NONE / Proprietary | ~unknown | ~unknown | NJ recruited COBOL volunteers during COVID-19 crisis (2020). Code was NOT open-sourced; DOL/NJ collaboration produced a modern frontend layer only. |

**Key finding:** No US state government has released COBOL unemployment/benefits/Medicaid source code as open source. The DOL Open UI Initiative encourages modularity but has not produced COBOL releases.

---

## 4. Historical / Public-Domain COBOL Collections

| Name | URL | Host | LICENSE/Rights | Approx Size | Est. COBOL Files | Notes |
|------|-----|------|----------------|-------------|-------------------|-------|
| NIST CCVS85 (newcob.val) — via GnuCOBOL mirror | https://sourceforge.net/projects/gnucobol/files/nist/ | SourceForge | GOV-WORK / "free to use, copyright likely reserved" | ~3.4 MB (gz) | ~300 programs | US federal NIST COBOL 85 Compiler Validation Suite. ~300 COBOL test programs. Originally at itl.nist.gov. Widely redistributed. Treated as effectively public domain in practice. |
| CBT Tape GitHub Mirror | https://github.com/mainframed/CBTTAPE | GitHub | NONE stated / Freeware (historic) | 900+ files | ~50–100 COBOL files | Extraction of the CBT (Connecticut Bank & Trust) Tape, the canonical MVS freeware collection since 1975. Contains COBOL utilities: File 321 (COBOL Analyzer), 331 (COBOL subroutines), 552 (COBOL/MVS Analysis), 779, 799, etc. No explicit OSI license. |
| CBT Tape Official Website | https://www.cbttape.org | cbttape.org | Freeware / "CBT files are free" | 900+ numbered files | ~50–100 COBOL files | Canonical source. Managed under Open Mainframe Project. Download from cbttape.org/cbtdowns.htm. |
| IBM Public Domain Software (ibiblio) | https://www.ibiblio.org/jmaynard/ | ibiblio.org | PUBLIC-DOMAIN (IBM released into PD) | Multiple tapes | Unknown | IBM System/360 and System/370 software released to public domain, including distribution tapes with COBOL sample programs bundled with MVS 3.8j. |
| MVS 3.8j TK4/TK5 (Hercules) | http://wotho.ethz.ch/tk4-/ (primary) | Various mirrors | PUBLIC-DOMAIN (IBM released MVS 3.8j) | ~300 MB | ~10–30 COBOL samples | Last IBM MVS version released to public domain (~1981). Bundled COBOL compiler and sample programs (e.g. TESTCOB). Runs under Hercules emulator. |
| Microsoft COBOL-80 1978 (Bitsavers/Archive.org) | https://archive.org/details/bitsavers_microsoftc978_6774127 | Internet Archive | Bitsavers preservation copy | ~6 MB | ~1 (compiler image) | Scanned/imaged Microsoft COBOL-80 for CP/M, 1978. Documentation-heavy, not source code. |
| Bitsavers IBM COBOL Documentation Collection | https://archive.org/search?query=bitsavers+cobol | Internet Archive | Scanned docs — copyright status varies | Dozens of items | 0 source files | Manuals for IBM OS/360, OS/370 COBOL compilers (1964–1983). Not source code — scanned reference manuals. |
| RosettaCodeData COBOL (GitHub mirror) | https://github.com/acmeism/RosettaCodeData | GitHub | GNU FDL 1.2 | Large multi-lang repo | ~400–500 COBOL tasks | Community mirror of all Rosetta Code tasks organized by language. COBOL directory has ~400+ task implementations. License: GNU Free Documentation License 1.2. |
| Rosetta Code COBOL Category (live site) | https://rosettacode.org/wiki/Category:COBOL | rosettacode.org | GNU FDL 1.2 | Web content | ~410 tasks | 410 COBOL programming tasks with complete sample programs. Not a downloadable repo directly. |
| Open Mainframe Project COBOL Course | https://github.com/openmainframeproject/cobol-programming-course | GitHub | CC-BY-4.0 | Medium | ~74% of repo is .cbl | Training materials + lab COBOL programs. 74% COBOL by volume. Not historical, but the largest freely licensed standalone COBOL sample corpus. Last updated April 2026. |
| X-COBOL Dataset (Zenodo) | https://zenodo.org/records/7968845 | Zenodo | CC-BY-4.0 (dataset metadata) | ~182 repos metadata | 182 repos / unknown file count | Research dataset: metadata for 182 GitHub COBOL repos (commits, issues, PRs) + COBOL source files extracted. Includes some government-adjacent repos. arXiv: 2306.04892. |
| GnuCOBOL (compiler + test suite) | https://sourceforge.net/projects/gnucobol/ | SourceForge | GPL-2.0 / LGPL-2.0 | Medium | ~37,000 internal tests + NIST suite | Open-source COBOL compiler. Contains extras/ directory with useful COBOL programs and includes the NIST CCVS85 suite. |
| Computer History Museum Software Collection | https://computerhistory.org/collections/ | CHM | Varies (some items accessible) | Extensive archive | Unknown | CHM holds COBOL manuals and source code in its software preservation collection. Direct downloads limited; contact for access. Some items via Software Preservation Network. |
| Smithsonian NMAH COBOL Exhibit Archive | https://americanhistory.si.edu/blog/2010/12/50-years-of-running-cobol.html | Smithsonian | Museum archive (not downloadable) | Physical artifacts | 0 digital | First COBOL test printout (1960, RCA), hardware, documentation. Exhibit retired 2023; archived snapshot available. Not downloadable source code. |

---

## 5. Summary of Rights/Status

| Category | Public Domain / Fully Free? | Best Source |
|----------|-----------------------------|-------------|
| US Federal COBOL (production) | NO — proprietary, unreleased | — |
| UK/EU Gov COBOL (production) | NO — proprietary, unreleased | — |
| NIST CCVS85 test suite | EFFECTIVELY YES (gov work, free use) | SourceForge GnuCOBOL /nist/ |
| IBM MVS 3.8j + COBOL samples | YES — IBM released to public domain | ibiblio.org/jmaynard + TK4/TK5 |
| CBT Tape COBOL utilities | FREEWARE (no OSI license) | cbttape.org |
| RosettaCodeData COBOL | COPYLEFT (GNU FDL 1.2) | github.com/acmeism/RosettaCodeData |
| OMP COBOL Course | PERMISSIVE (CC-BY-4.0) | github.com/openmainframeproject/cobol-programming-course |
| X-COBOL Dataset | PERMISSIVE (CC-BY-4.0 metadata) | zenodo.org/records/7968845 |
| Bitsavers COBOL docs | PRESERVATION COPIES (manuals only) | archive.org bitsavers collection |

---

## Clone/Download URLs

> Deduplicated list of all actionable URLs for acquiring COBOL content.

```
# US Government Open Source (modern stacks, no COBOL code)
https://github.com/IRS-Public/direct-file
https://github.com/USDepartmentofLabor/ui-claimant-experience-pilot
https://github.com/USDepartmentofLabor/UI-Claimant-Experience-NJ-Pilot
https://github.com/GSA/code-gov-open-source-toolkit

# NIST COBOL85 Test Suite (~300 programs, effectively public domain)
https://sourceforge.net/projects/gnucobol/files/nist/newcob.val.tar.gz/download
# Direct NIST mirror (may be stale):
http://www.itl.nist.gov/div897/ctg/cobol_form.htm

# IBM Public Domain COBOL (MVS 3.8j era)
https://www.ibiblio.org/jmaynard/
# TK4 MVS Turnkey (includes COBOL compiler + samples):
http://wotho.ethz.ch/tk4-/

# CBT Tape COBOL Freeware Utilities
https://www.cbttape.org/cbtdowns.htm
https://github.com/mainframed/CBTTAPE

# RosettaCode COBOL (~410 tasks, GNU FDL 1.2)
https://github.com/acmeism/RosettaCodeData
# Direct COBOL subdirectory:
https://github.com/acmeism/RosettaCodeData/tree/main/Lang/COBOL

# Open Mainframe Project COBOL Course (CC-BY-4.0)
https://github.com/openmainframeproject/cobol-programming-course

# X-COBOL Research Dataset (CC-BY-4.0, 182 repos metadata + source)
https://zenodo.org/records/7968845

# GnuCOBOL compiler (GPL, includes NIST test suite)
https://sourceforge.net/projects/gnucobol/files/gnucobol/3.2/
https://github.com/OCamlPro/gnucobol  (GitHub clone)

# Bitsavers COBOL Manuals (documentation only, not source)
https://archive.org/search?query=bitsavers+ibm+cobol

# Computer History Museum Software Directory
https://softwarepreservation.computerhistory.org/directoryofswlinks/
```

---

## References & Sources

- [X-COBOL: A Dataset of COBOL Repositories (arXiv 2306.04892)](https://arxiv.org/abs/2306.04892)
- [X-COBOL on Zenodo](https://zenodo.org/records/7968845)
- [GnuCOBOL NIST files on SourceForge](https://sourceforge.net/projects/gnucobol/files/nist/)
- [GnuCOBOL Project](https://sourceforge.net/projects/gnucobol/)
- [CBT Tape Home Page](https://www.cbttape.org/)
- [CBT Tape — Open Mainframe Project](https://openmainframeproject.org/projects/cbt-tape/)
- [CBT Tape GitHub Mirror](https://github.com/mainframed/CBTTAPE)
- [IBM Public Domain Software — ibiblio](https://www.ibiblio.org/jmaynard/)
- [RosettaCodeData GitHub](https://github.com/acmeism/RosettaCodeData)
- [Rosetta Code COBOL Category](https://rosettacode.org/wiki/Category:COBOL)
- [OMP COBOL Programming Course](https://github.com/openmainframeproject/cobol-programming-course)
- [IRS Direct File GitHub](https://github.com/IRS-Public/direct-file)
- [DOL UI Claimant Experience Pilot](https://github.com/USDepartmentofLabor/ui-claimant-experience-pilot)
- [DOL Open UI Initiative](https://www.dol.gov/agencies/eta/ui-modernization/open-UI-initiative)
- [GAO Legacy Systems Report (GAO-25-107795)](https://files.gao.gov/reports/GAO-25-107795/index.html)
- [HMRC COBOL — The Register](https://www.theregister.com/2025/08/15/cobol_in_the_public_sector_feature)
- [FSF on IRS Direct File Open Source](https://www.fsf.org/blogs/community/irs-direct-file-released-as-free-software)
- [Smithsonian COBOL 50th Anniversary](https://americanhistory.si.edu/blog/2010/12/50-years-of-running-cobol.html)
- [Bitsavers IBM COBOL on Archive.org](https://archive.org/details/bitsavers_ibm)
- [New Jersey Unemployment COBOL — Slate](https://slate.com/technology/2020/04/new-jersey-unemployment-cobol-coronavirus.html)
- [NIST CCVS85 User Guide — NTIS](https://ntrl.ntis.gov/NTRL/dashboard/searchResults/titleDetail/PB89151310.xhtml)
- [Software Heritage Archive](https://archive.softwareheritage.org/)
