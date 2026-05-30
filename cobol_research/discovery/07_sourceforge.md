# SourceForge COBOL Project Catalogue

**Discovery date:** 2026-05-30  
**Method:** SourceForge project pages, file listings, SVN/CVS repository browsers, WebSearch  
**Scope:** COBOL compilers, tools, utilities, and test suites hosted on sourceforge.net

---

## Project Summary Table

| # | Project Name | SF URL | VCS | License Class | License | Approx Size | COBOL Files (est.) | Status | Notes |
|---|---|---|---|---|---|---|---|---|---|
| 1 | **GnuCOBOL** (primary) | https://sourceforge.net/projects/gnucobol/ | SVN | COPYLEFT | GPLv2/v3 + LGPLv2/v3 | ~85.9 MB (all releases); source tarball 5.5 MB | ~1,000+ (compiler, runtime, tests) | Active (last commit 2025-12) | Ships NIST CCVS85 test suite; formerly OpenCOBOL |
| 2 | **GnuCOBOL Contrib** (tools/samples) | https://sourceforge.net/p/gnucobol/contrib/ | SVN | COPYLEFT | GPLv2/v3 (per contribution) | ~r1167 revisions | 500+ sample .cbl/.cob files | Active | Community samples & tools in `trunk/samples/` and `trunk/tools/` |
| 3 | **TinyCOBOL** | https://sourceforge.net/projects/tiny-cobol/ | CVS (read-only snapshot) | COPYLEFT | GPLv2 + LGPLv2 | 780.9 KB (latest CVS snapshot) | ~100–200 | Abandoned (last: 2011-05) | x86-32 only; generates GNU assembler; final release 0.66 |
| 4 | **OpenCOBOL** (legacy files) | https://sourceforge.net/projects/gnucobol/files/open-cobol/ | Release tarballs only | COPYLEFT | GPL + LGPL | varies per version (0.22–2.0) | N/A | Superseded | Pre-rename releases (0.22, 1.1, 1.1CE, 2.0) archived under GnuCOBOL project |
| 5 | **COBOL-IT** | https://sourceforge.net/projects/cobol-it/ | Unknown (no VCS exposed) | COPYLEFT | GPLv2 + LGPLv2 | Not listed | ~200–500 (C+COBOL) | Dormant (last: 2016-06) | Commercial fork of OpenCOBOL; acquired by Micro Focus; 0 downloads/week |
| 6 | **COBOL Utilities Project** (cobol-up) | https://sourceforge.net/projects/cobol/ | SVN (inferred) | COPYLEFT | GPLv2 + LGPLv2 | 138.0 KB (cobcy-0.4.1-src.zip) | ~50–100 | Stale (last: 2017-11) | Compiler-agnostic utilities, libraries, test suites; includes open-cobol files |
| 7 | **Koopa** (COBOL parser generator) | https://sourceforge.net/projects/koopa/ | Git (migrated to GitHub) | PERMISSIVE | BSD | 2.9 MB (JAR) | ~100+ (Java+COBOL grammars) | Migrated (last SF: 2019-02) | SF kept for history; active dev at https://github.com/krisds/koopa |
| 8 | **COBUnit** | https://sourceforge.net/projects/cobunit/ | Unknown | COPYLEFT | GPLv2 + LGPLv2 | Not listed | ~20–50 | Abandoned (last: 2014-06) | TDD unit test framework for COBOL; planning status only |
| 9 | **CobCurses** | https://sourceforge.net/projects/cobcurses/ | Git (GitHub mirror) | COPYLEFT | GPLv2 + LGPLv2 | 513.0 KB | ~30–60 | Migrated (last SF: 2014-10) | COBOL interface to curses(3X); active repo at https://github.com/ve3wwg/cobcurses |
| 10 | **dbpre** (SQL precompiler) | https://sourceforge.net/projects/dbpre/ | Unknown | PERMISSIVE | Creative Commons Attribution | 147.5 KB | ~20–40 | Low activity (last: 2021-11) | SQL precompiler for GnuCOBOL + MySQL |
| 11 | **GnuCOBOL Program Collection** (gnucoboldev) | https://sourceforge.net/projects/gnucoboldev/ | Unknown | COPYLEFT | GPLv3 | 88.7 KB (.rar) | ~20–40 | Low activity (last: 2024-01) | Sample programs by Juan Carlos Negrete; biorhythm, address management |
| 12 | **RecordEditor** | https://sourceforge.net/projects/record-editor/ | Git/SVN | PERMISSIVE | LGPL | Multi-MB | ~50 (COBOL copybooks) | Active | Data file editor; supports COBOL copybook definitions |
| 13 | **Cobxref** | https://sourceforge.net/projects/cobxref/ | Unknown | NONE/COPYLEFT | Not confirmed | Small | ~10–20 | Stale | COBOL cross-reference tool; documents variable/procedure usage |
| 14 | **EDITEL** | https://sourceforge.net/projects/editel/ | Unknown | Unknown | Not confirmed | Small | ~10–30 | Unknown | Screen editor / SCREEN SECTION code generator for GnuCOBOL |
| 15 | **CobolToCsv** / **CobolToXml** | https://sourceforge.net/projects/coboltocsv/ / https://sourceforge.net/projects/coboltoxml/ | Unknown | Unknown | Not confirmed | Small | ~10–20 | Stale | Copybook-driven data converters |

---

## GnuCOBOL Detail (Primary Target)

**Project URL:** https://sourceforge.net/projects/gnucobol/  
**GNU home:** https://gnucobol.sourceforge.io/  
**License:** Compiler/driver programs — GPLv2 or GPLv3; runtime library (`libcob/`) and helper libs — LGPLv2 or LGPLv3  
**Languages:** C (primary implementation), COBOL (test suite, samples)  
**Latest stable release:** 3.2 (2023-07-28); branches for 3.3 and 4.0-early-dev active in CI  
**SVN trunk last commit:** r5627 (2025-12-08)  
**Downloads (v3.2):** ~1,035/week across all platforms  
**Total release files (v3.2 directory):** 45 files, 85.9 MB cumulative  

### NIST Test Suite

GnuCOBOL ships the **NIST CCVS85 (ANSI85)** test suite, stored separately at:

```
https://sourceforge.net/projects/gnucobol/files/nist/
```

| NIST file | Size | Date |
|-----------|------|------|
| newcob.val.tar.gz | 3.4 MB | 2016-05-01 |
| newcob.val.tar.bz2 | 1.1 MB | 2016-05-01 |
| newcob.zip | 3.0 MB | 2016-05-01 |
| newcob.7z | 1.1 MB | 2016-05-01 |
| README.txt | 222 B | 2016-05-01 |

The suite contains **9,748 tests** across modules: NC (nucleus), SM (COPY), IC (CALL), SQ/RL/IX/ST (file I/O), RW (REPORT), IF (intrinsics), DB (debug), SG (segments).  
**GnuCOBOL passes 9,700+ of those 9,748 tests.**  
Tests live in SVN at `trunk/tests/cobol85/` and are invoked via `make check` (requires Perl).

---

## Clone/Download URLs

### GnuCOBOL — Main Compiler Source (SVN)

```bash
# Trunk (bleeding edge, currently targeting 3.3/4.0):
svn checkout svn://svn.code.sf.net/p/gnucobol/code/trunk gnucobol-trunk

# HTTPS alternative (same content):
svn checkout https://svn.code.sf.net/p/gnucobol/code/trunk gnucobol-trunk

# Stable 3.x branch:
svn checkout svn://svn.code.sf.net/p/gnucobol/code/branches/gnucobol-3.x gnucobol-3.x
```

### GnuCOBOL — Release Tarballs (no VCS client needed)

```bash
# Latest stable source (3.2, 2023-07-28):
wget https://sourceforge.net/projects/gnucobol/files/gnucobol/3.2/gnucobol-3.2.tar.gz/download \
     -O gnucobol-3.2.tar.gz

# Windows binary bundle:
wget https://sourceforge.net/projects/gnucobol/files/gnucobol/3.2/gnucobol-3.2_win.7z/download \
     -O gnucobol-3.2_win.7z
```

### GnuCOBOL — NIST CCVS85 Test Suite

```bash
# Preferred (bzip2, smallest):
wget https://sourceforge.net/projects/gnucobol/files/nist/newcob.val.tar.bz2/download \
     -O newcob.val.tar.bz2

# Alternative (gzip):
wget https://sourceforge.net/projects/gnucobol/files/nist/newcob.val.tar.gz/download \
     -O newcob.val.tar.gz
```

### GnuCOBOL — Contrib (Tools/Samples/Games, SVN)

```bash
# Read-only checkout of all community COBOL samples:
svn checkout svn://svn.code.sf.net/p/gnucobol/contrib/ gnucobol-contrib

# HTTPS alternative:
svn checkout https://svn.code.sf.net/p/gnucobol/contrib/ gnucobol-contrib
```

### TinyCOBOL — CVS Snapshot (read-only, abandoned)

```bash
# Download the CVS repository snapshot tarball (SourceForge froze CVS in 2016):
wget https://sourceforge.net/projects/tiny-cobol/files/tiny-cobol/cvs/tiny-cobol.cvs.110423.tar.bz2/download \
     -O tiny-cobol.cvs.110423.tar.bz2

# After extraction, use local CVS:
# cvs -d /path/to/tiny-cobol co tiny-cobol
```

### TinyCOBOL — Latest Release Tarball (v0.66, final)

```bash
wget "https://sourceforge.net/projects/tiny-cobol/files/tiny-cobol/0.66/" \
     # Browse the 0.66 directory for the specific .tar.gz filename
# Direct file (check actual filename at the URL above):
wget https://sourceforge.net/projects/tiny-cobol/files/tiny-cobol/0.66/tiny-cobol-0.66.tar.bz2/download \
     -O tiny-cobol-0.66.tar.bz2
```

### OpenCOBOL Legacy Release Tarballs (archived under GnuCOBOL project)

```bash
# OpenCOBOL 2.0 (last pre-rename release):
wget https://sourceforge.net/projects/gnucobol/files/open-cobol/2.0/ -O - | grep -o 'href="[^"]*\.tar\.gz[^"]*"'
# Browse: https://sourceforge.net/projects/gnucobol/files/open-cobol/

# OpenCOBOL 1.1:
wget https://sourceforge.net/projects/gnucobol/files/open-cobol/1.1/ # browse for tarball
```

### COBOL-IT (dormant, 2016 snapshot)

```bash
# Project page (no public VCS; check for any release files):
# https://sourceforge.net/projects/cobol-it/files/
# No downloadable files were found as of May 2026; project is effectively dead.
```

### COBOL Utilities Project

```bash
# Latest release (cobcy 0.4.1, 2011):
wget https://sourceforge.net/projects/cobol/files/cobol/cobcy-0.4.1-src.zip/download \
     -O cobcy-0.4.1-src.zip

# Project home: https://cobol.sourceforge.net/
```

### Koopa COBOL Parser (migrated to GitHub)

```bash
# GitHub (active, current):
git clone https://github.com/krisds/koopa

# SourceForge JAR download (historic, r392):
wget https://sourceforge.net/projects/koopa/files/koopa-r392.jar/download -O koopa-r392.jar
```

### CobCurses (migrated to GitHub)

```bash
# GitHub (current):
git clone https://github.com/ve3wwg/cobcurses
```

---

## License Caveats

| Concern | Detail |
|---|---|
| GnuCOBOL compiler (`cobc/`) | **GPLv2 or v3** — any compiled executable that statically links the compiler is GPL-covered |
| GnuCOBOL runtime (`libcob/`) | **LGPLv2 or v3** — programs compiled with GnuCOBOL and linked against libcob are NOT automatically GPL; LGPL allows proprietary use with dynamic linking |
| NIST CCVS85 test suite | Obtained from US government (NIST); likely public domain, but GnuCOBOL README notes "copyright likely retained by NIST" — not a free/open license; **do not redistribute as your own** |
| TinyCOBOL | GPLv2 only (no "or later" clause) — more restrictive to upgrade/relicense |
| COBOL-IT | GPLv2 + LGPLv2; project acquired by Micro Focus — no active open-source community; use GnuCOBOL instead |
| Koopa (SourceForge copy) | BSD — permissive, use freely; GitHub version is canonical |
| dbpre | Creative Commons Attribution — unusual for code; requires attribution; **not OSI-approved**, may cause compatibility issues |
| CobCurses | GPLv2 + LGPLv2 — copyleft |

---

## Key Observations

1. **GnuCOBOL is the only actively-maintained COBOL compiler on SourceForge** (SVN trunk active as of 2025-12). All others are dormant or migrated.
2. **OpenCOBOL is not a separate project** — it is the former name of GnuCOBOL; legacy release archives (0.22–2.0) live under the GnuCOBOL SF project in `/files/open-cobol/`.
3. **TinyCOBOL is abandoned (2011)** and uses CVS (frozen by SourceForge). The CVS snapshot tarball is the only practical access method.
4. **COBOL-IT is effectively dead** — no downloads, no VCS access, acquired commercially.
5. The **NIST CCVS85 suite** is a standalone download (3–3.4 MB) separate from the compiler source; it is referenced by `trunk/tests/cobol85/` but must be downloaded independently.
6. Many smaller COBOL utilities have migrated to GitHub (Koopa, CobCurses) while keeping a SourceForge tombstone page.

---

*Sources: sourceforge.net project pages, SourceForge SVN browser, SourceForge file release listings, gnucobol.sourceforge.io*
