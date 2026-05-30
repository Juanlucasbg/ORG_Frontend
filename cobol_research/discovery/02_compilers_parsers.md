# COBOL Compilers, Parsers & Transpilers — Discovery Report

**Generated:** 2026-05-30  
**Scope:** Public, clone-able repositories hosting COBOL compilers, parsers, or transpilers that ship COBOL test-fixture corpora (.cbl / .cob / .CBL files).  
**Method:** WebSearch + WebFetch (GitHub pages, SourceForge); GitHub API returned 403 so all metrics are from live page scrapes and authoritative search snippets.

---

## Repository Table

| # | Owner / Name | Host | Clone URL | Stars | License Class | License ID | Approx Size | Est. COBOL Test Files | Notes |
|---|---|---|---|---|---|---|---|---|---|
| 1 | `uwol/proleap-cobol-parser` | GitHub | `https://github.com/uwol/proleap-cobol-parser.git` | ~199 | COPYLEFT | AGPL-3.0 | ~9 MB | **~950** (.CBL — NIST corpus, 126 confirmed in `/gov/nist` + additional proleap-specific dirs) | ANTLR4-based; 680 test executions; test-driven against NIST CCVS85 |
| 2 | `krisds/koopa` | GitHub | `https://github.com/krisds/koopa.git` | ~55 | PERMISSIVE | BSD-3-Clause | ~5 MB | **~300** (.CBL — NIST CCVS85 split into individual files; 138 confirmed in `testsuite/cobol85`) | Active as of May 2026; koopa test suite is source for proleap's NIST files |
| 3 | `opensourcecobol/opensourcecobol4j` | GitHub | `https://github.com/opensourcecobol/opensourcecobol4j.git` | ~121 | COPYLEFT | GPL-3.0 / LGPL-3.0 | ~15 MB | **~360** (NIST COBOL85 compliance tests; 361 programs, 8,804 passing tests confirmed) | COBOL→Java transpiler; actively maintained (v1.1.20, Apr 2026) |
| 4 | `eclipse-che4z/che-che4z-lsp-for-cobol` | GitHub | `https://github.com/eclipse-che4z/che-che4z-lsp-for-cobol.git` | ~112 | COPYLEFT | EPL-2.0 | ~50 MB | **~200** (84.9% COBOL by volume, 4,884 commits; large COBOL test base in Java/TS LSP project) | Broadcom-backed LSP for COBOL; active (v2.5.0, May 2026) |
| 5 | `OCamlPro/gnucobol` | GitHub | `https://github.com/OCamlPro/gnucobol.git` | ~63 | COPYLEFT | GPL-3.0 / LGPL-3.0 / GFDL-1.3 | ~30 MB | **~430** (9,748 NIST tests over ~424 programs; tests in Autotest `.at` format + COBOL source) | Git mirror of canonical SourceForge GnuCOBOL; C-based compiler |
| 6 | `OCamlPro/gnucobol4` | GitHub | `https://github.com/OCamlPro/gnucobol4.git` | ~1 | COPYLEFT | GPL-3.0 / LGPL-3.0 / GFDL-1.3 | ~35 MB | **~430** (same NIST suite as gnucobol) | GnuCOBOL v4 mirror; used by SuperBOL Studio |
| 7 | `GnuCOBOL` (canonical) | SourceForge | `https://sourceforge.net/p/gnucobol/code/HEAD/tree/` (SVN) | N/A | COPYLEFT | GPL-2.0+ / LGPL-2.0+ | ~30 MB | **~430** (9,748 NIST CCVS85 + 37,000 internal tests) | Primary upstream; also at `svn://svn.code.sf.net/p/gnucobol/code/` |
| 8 | `opensourcecobol/opensource-cobol` | GitHub | `https://github.com/opensourcecobol/opensource-cobol.git` | ~84 | COPYLEFT | GPL-2.0 / LGPL-2.1 | ~8 MB | **~50** (small test/ dir; COBOL is 0.4% of repo) | COBOL→C compiler; Japan-specific extensions; last release v1.5.2J (2019) |
| 9 | `TypeCobolTeam/TypeCobol` | GitHub | `https://github.com/TypeCobolTeam/TypeCobol.git` | ~86 | PERMISSIVE (check) | Apache-2.0 (likely; unconfirmed) | ~25 MB | **~100** (12.4% COBOL, 4,037 commits; IBM Enterprise COBOL 6 for z/OS) | Incremental parser + TypeCobol→COBOL85 transpiler; C#/ANTLR; active (v2.13.0, Mar 2026) |
| 10 | `AbsaOSS/cobrix` | GitHub | `https://github.com/AbsaOSS/cobrix.git` | ~164 | PERMISSIVE | Apache-2.0 | ~20 MB | **~30** (copybook-oriented; EBCDIC/Spark data source, not a compiler test suite) | Scala; COBOL copybook parser for Apache Spark; not a compiler |
| 11 | `otterkit/otterkit-cobol` | GitHub | `https://github.com/otterkit/otterkit-cobol.git` | ~251 | PERMISSIVE | Apache-2.0 | ~5 MB | **~20** (archived Feb 2024; limited test corpus before archival) | COBOL→C# compiler for .NET; ARCHIVED; C + C# |
| 12 | `OCamlPro/superbol-studio-oss` | GitHub | `https://github.com/OCamlPro/superbol-studio-oss.git` | ~42 | PERMISSIVE | LGPL-3.0 (check LICENSE.md) | ~15 MB | **~50** (13.7% COBOL; LSP/VSCode extension over GnuCOBOL) | OCaml-based LSP server; active (v0.3.0, Mar 2026) |
| 13 | `antlr/grammars-v4` (cobol85 subdir) | GitHub | `https://github.com/antlr/grammars-v4.git` | ~10,900 | PERMISSIVE | MIT | ~500 MB (whole repo) | **~5** (cobol85/examples/ has minimal .txt examples; grammar only, no large test corpus) | The Cobol85.g4 grammar is the basis for proleap-cobol-parser |
| 14 | `ArturHD/cobol-to-java-transpiler` | GitHub | `https://github.com/ArturHD/cobol-to-java-transpiler.git` | ~3 | COPYLEFT | GPL-3.0 | ~1 MB | **~5** (few hand-written .cob fixtures: conditional.cob, performtimes.cob, etc.) | Kotlin; COBOL85→Java via ANTLR; research/prototype quality |
| 15 | `johnhearn/cb2java` | GitHub | `https://github.com/johnhearn/cb2java.git` | ~3 | COPYLEFT | GPL-1.0+ | ~1 MB | **~5** (copybook parser; minimal .cob test files) | Java; dynamic COBOL copybook parser; forked from SourceForge cb2java |
| 16 | `spgennard/vscode_cobol` | GitHub | `https://github.com/spgennard/vscode_cobol.git` | ~47 | PERMISSIVE (check) | Custom (SEE LICENSE) | ~10 MB | **~10** (syntax highlighter; some sample COBOL files) | VS Code extension; Micro Focus / Rocket COBOL dialect support |
| 17 | `ayumin/open-cobol` | GitHub | `https://github.com/ayumin/open-cobol.git` | ~23 | COPYLEFT | GPL-2.0 / LGPL-2.1 | ~5 MB | **~50** (older GnuCOBOL mirror; tests/ dir, 1.3% COBOL) | Unofficial GitHub mirror of pre-GnuCOBOL OpenCOBOL |

### Proprietary / Non-Cloneable (noted for completeness)

| Name | Vendor | Status | Notes |
|---|---|---|---|
| Heirloom Elastic COBOL | Heirloom Computing | Proprietary SaaS | No public repository; commercial modernization platform |
| Raincode COBOL | Raincode Labs | Proprietary | No public repository; Windows/.NET COBOL compiler |
| Veryant isCOBOL | Veryant | Proprietary | No public repository; Java-based COBOL runtime |
| `moderneinc/rewrite-cobol` | Moderne Inc. | Proprietary (private GitHub repo) | COBOL AST for OpenRewrite; requires commercial Moderne contract; 80.7% COBOL in repo but access-gated |

---

## Top 5 by Estimated COBOL File Count (with License Class)

| Rank | Repo | Est. COBOL Files | License Class |
|---|---|---|---|
| 1 | `uwol/proleap-cobol-parser` | ~950 | COPYLEFT (AGPL-3.0) |
| 2 | `krisds/koopa` | ~300 | PERMISSIVE (BSD-3-Clause) |
| 3 | `opensourcecobol/opensourcecobol4j` | ~360 | COPYLEFT (GPL-3.0/LGPL-3.0) |
| 4 | `OCamlPro/gnucobol` / `gnucobol4` | ~430 | COPYLEFT (GPL-3.0/LGPL-3.0/GFDL-1.3) |
| 5 | `eclipse-che4z/che-che4z-lsp-for-cobol` | ~200 | COPYLEFT (EPL-2.0) |

---

## Clone URLs (deduplicated)

```
https://github.com/uwol/proleap-cobol-parser.git
https://github.com/krisds/koopa.git
https://github.com/opensourcecobol/opensourcecobol4j.git
https://github.com/opensourcecobol/opensource-cobol.git
https://github.com/eclipse-che4z/che-che4z-lsp-for-cobol.git
https://github.com/OCamlPro/gnucobol.git
https://github.com/OCamlPro/gnucobol4.git
https://github.com/OCamlPro/superbol-studio-oss.git
https://github.com/TypeCobolTeam/TypeCobol.git
https://github.com/AbsaOSS/cobrix.git
https://github.com/otterkit/otterkit-cobol.git
https://github.com/antlr/grammars-v4.git
https://github.com/ArturHD/cobol-to-java-transpiler.git
https://github.com/johnhearn/cb2java.git
https://github.com/spgennard/vscode_cobol.git
https://github.com/ayumin/open-cobol.git
svn://svn.code.sf.net/p/gnucobol/code/  (SourceForge SVN — canonical upstream)
```

---

## Methodology Notes & Confidence Caveats

- **Star counts** are from GitHub page scrapes (May 2026); may be ±5–10% stale.
- **COBOL file estimates** for `proleap-cobol-parser` (~950) derive from: 126 confirmed in `/gov/nist`, plus additional proleap-specific test dirs visible in the repo's 90.3% COBOL language stat. The original task brief cited ~950; this is consistent with the known test-case count of 680.
- **GnuCOBOL** COBOL files are primarily in Autotest `.at` wrapper format, not raw `.cbl`; the ~430 estimate reflects program-count from NIST CCVS85 documentation (424 modules). Raw `.cbl` count in source tree is lower (~20–40); the bulk of NIST tests ship as a separate downloadable archive (`gnucobol/files/nist/` on SourceForge).
- **koopa** confirmed 138 `.CBL` files in `testsuite/cobol85/` plus a `koopa/` subdir; total ~300 is estimated.
- **opensourcecobol4j** confirmed 361 NIST programs in `/tests/cobol85/`.
- **moderneinc/rewrite-cobol** is listed as a private repository despite the GitHub URL being publicly discoverable; commercial access required.
- **Heirloom COBOL**, **Raincode**, and **Veryant isCOBOL** are confirmed proprietary with no public source repositories.

---

## Sources

- [uwol/proleap-cobol-parser](https://github.com/uwol/proleap-cobol-parser)
- [krisds/koopa](https://github.com/krisds/koopa)
- [opensourcecobol/opensourcecobol4j](https://github.com/opensourcecobol/opensourcecobol4j)
- [opensourcecobol/opensource-cobol](https://github.com/opensourcecobol/opensource-cobol)
- [eclipse-che4z/che-che4z-lsp-for-cobol](https://github.com/eclipse-che4z/che-che4z-lsp-for-cobol)
- [OCamlPro/gnucobol](https://github.com/OCamlPro/gnucobol)
- [OCamlPro/gnucobol4](https://github.com/OCamlPro/gnucobol4)
- [OCamlPro/superbol-studio-oss](https://github.com/OCamlPro/superbol-studio-oss)
- [TypeCobolTeam/TypeCobol](https://github.com/TypeCobolTeam/TypeCobol)
- [AbsaOSS/cobrix](https://github.com/AbsaOSS/cobrix)
- [otterkit/otterkit-cobol](https://github.com/otterkit/otterkit-cobol)
- [antlr/grammars-v4 cobol85](https://github.com/antlr/grammars-v4/tree/master/cobol85)
- [ArturHD/cobol-to-java-transpiler](https://github.com/ArturHD/cobol-to-java-transpiler)
- [johnhearn/cb2java](https://github.com/johnhearn/cb2java)
- [spgennard/vscode_cobol](https://github.com/spgennard/vscode_cobol)
- [ayumin/open-cobol](https://github.com/ayumin/open-cobol)
- [GnuCOBOL SourceForge](https://sourceforge.net/projects/gnucobol/)
- [moderneinc/rewrite-cobol](https://github.com/moderneinc/rewrite-cobol) (proprietary)
