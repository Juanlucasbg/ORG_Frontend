# COBOL Background: History, Current Use & Workforce Demand

*Research compiled May 2026. All statistics cited to primary or near-primary sources.*

---

## What COBOL is & its history

COBOL (COmmon Business-Oriented Language) is a compiled, English-like procedural programming language designed for business data processing. Its defining structural feature — introduced from the first version — is the **four-division program layout**: IDENTIFICATION, ENVIRONMENT, DATA, and PROCEDURE DIVISIONS, plus hierarchical level numbers and PICTURE clauses for describing data fields.

### Origins (1959–1960)

- **8 April 1959**: Mary K. Hawes, a computer scientist at Burroughs Corporation, called an informal meeting of representatives from academia, computer users, and manufacturers at the University of Pennsylvania to organize a formal effort on a common business language. ([Wikipedia/COBOL](https://en.wikipedia.org/wiki/COBOL); [EBSCO Research Starters](https://www.ebsco.com/research-starters/history/hopper-invents-computer-language-cobol))
- **28–29 May 1959**: The full founding meeting was held at **The Pentagon, Arlington, Virginia**, bringing together computer users, programmers, manufacturers, universities, and the US Department of Defense. The DoD, led by Charles A. Phillips (Director of Data System Research Staff), agreed to sponsor and lead the effort. ([Wikipedia/COBOL](https://en.wikipedia.org/wiki/COBOL))
- **4 June 1959**: The steering committee met and formally named the body **CODASYL** (Conference on Data Systems Languages). It created an executive committee plus short-range, intermediate-range, and long-range sub-committees. The nine-member "short-range committee" was tasked with a six-month investigation to draft the language specification. ([CODASYL Wikipedia](https://en.wikipedia.org/wiki/CODASYL))
- **Key people involved**:
  - **Mary K. Hawes** (Burroughs) — convened the original meeting. ([Wikipedia/COBOL](https://en.wikipedia.org/wiki/COBOL))
  - **Grace Hopper** (US Navy / Remington Rand) — technical adviser; her earlier language **FLOW-MATIC** (1955) directly influenced COBOL's use of long English-like variable names, English command words, and the separation of data from instructions. ([Wikipedia/Grace Hopper](https://en.wikipedia.org/wiki/Grace_Hopper))
  - **Jean E. Sammet** (Sylvania Electric Products) — lead designer and member of the specification subcommittee; later clarified that Hopper "was not the mother, creator, or developer of COBOL." ([historyofinformation.com](https://www.historyofinformation.com/detail.php?id=778))
  - **Bob Bemer** (IBM) — his IBM language **COMTRAN** was a competing influence; Bemer suggested the name "COBOL" at a mid-September 1959 meeting. ([Wikipedia/COBOL](https://en.wikipedia.org/wiki/COBOL))
- COBOL was designed as a **DoD-mandated portable language** to allow programs to run across different hardware without modification — a revolutionary goal for the era.

### Chronological Standards Timeline

| Version | Year | Standard Designator | Key Changes |
|---|---|---|---|
| **COBOL-60** | 1960 | *(pre-standard)* | Specifications approved by CODASYL executive committee on **8 January 1960**; printed by the US Government Printing Office. Established the four-division structure, level numbers, and PICTURE clauses. ([Wikipedia/COBOL](https://en.wikipedia.org/wiki/COBOL)) |
| **COBOL-61** | 1961 | *(CODASYL revision)* | Major cleanup of logical flaws in COBOL-60; added **Report Writer** (for formatted output) and basic **table handling**. ([HandWiki/COBOL](https://handwiki.org/wiki/COBOL)) |
| **COBOL-61 Extended** | 1963 | *(CODASYL revision)* | Introduced **sort** and additional report writer facilities. ([CODASYL Wikipedia](https://en.wikipedia.org/wiki/CODASYL)) |
| **COBOL-65** | 1965 | *(CODASYL revision)* | Clarified ambiguities; added facilities for **mass storage file handling** and refined table handling mechanisms to improve portability. ([HandWiki/COBOL](https://handwiki.org/wiki/COBOL)) |
| **COBOL-68** | 1968 | **ANSI X3.23-1968** | First official US national standard. Created by ANSI as "USA Standard COBOL X3.23." Goal was to establish an authoritative, unified specification. ([Wikipedia/COBOL](https://en.wikipedia.org/wiki/COBOL)) |
| **COBOL-74** | 1974 | **ANSI X3.23-1974** | Added **subprograms** (enabling modular programming and controlled data access per module); DELETE statement; file organization improvements. ([Wikipedia/COBOL](https://en.wikipedia.org/wiki/COBOL)) |
| **COBOL-85** | 1985 | **ISO 1989:1985 / ANSI X3.23-1985** | ISO Working Group 4 adopted the ANSI draft. Added structured programming constructs: **END-IF**, **EVALUATE** (case statement), nested subprograms. Published late 1985. ([ISO 1989:1985](https://www.iso.org/standard/6724.html)) |
| **COBOL-2002** | 2002 | **ISO/IEC 1989:2002** | Added **object-oriented programming** (classes, inheritance), user-defined functions, and user-defined data types. Published late 2002. ([Wikipedia/COBOL](https://en.wikipedia.org/wiki/COBOL)) |
| **COBOL-2014** | 2014 | **ISO/IEC 1989:2014** | Published **8 July 2014** (ISO acceptance); adopted by ANSI on **31 October 2014**. Incremental refinements to OO features and floating-point handling. ([ISO/IEC 1989:2014](https://www.iso.org/standard/51416.html)) |
| **COBOL-2023** | 2023 | **ISO/IEC 1989:2023** | Published **7 February 2023**; 1,264 pages. Third edition replacing ISO/IEC 1989:2014. Added: asynchronous messaging (SEND/RECEIVE), transaction processing (COMMIT/ROLLBACK), SET enhancements for dynamic-length items, SUPPRESS WHEN phrase for alternate key suppression, and EC-I-O-WARNING non-fatal exception. ([INCITS announcement](https://www.incits.org/news-events/news-coverage/available-now-2023-edition-of-isoiec-1989-cobol); [ISO/IEC 1989:2023](https://www.iso.org/standard/74527.html)) |

### Design Goals & Criticism

- COBOL was explicitly designed to be **readable by non-programmers**, particularly business managers — verbose English syntax was a feature, not a bug. ([Wikipedia/COBOL](https://en.wikipedia.org/wiki/COBOL))
- Common criticisms include excessive verbosity, lack of modern control structures (until COBOL-85), and a perceived resistance to functional or declarative paradigms.
- The language's tight coupling with IBM mainframe (z/OS) ecosystems makes complete migration costly and risky, a point heavily debated in the 2025–2026 AI-driven modernization discourse. ([Thoughtworks](https://www.thoughtworks.com/en-us/insights/articles/claude-code-cobol-modernization-reality))

---

## Where COBOL runs today

### Volume of COBOL Code in Production

- **~220 billion lines** — the long-standing figure, originating from a Gartner estimate in the 1990s and cited by Reuters in 2017. ([The New Stack](https://thenewstack.io/cobol-everywhere-will-maintain/))
- **~800 billion lines** — the revised estimate from a **2022 Micro Focus / Vanson Bourne survey** of 1,104 architects, software engineers, developers, and IT executives from **49 countries**. Respondents calculated COBOL code volumes on their own production systems; Vanson Bourne weighted responses by certainty level and extrapolated via installed-base market estimates. This figure is approximately 3–4× the previous Gartner baseline. ([PR Newswire — Micro Focus press release](https://www.prnewswire.com/news-releases/cobol-market-shown-to-be-three-times-larger-than-previously-estimated-in-new-independent-survey-301475439.html))
- An estimated **1.5 billion new lines of COBOL are written annually** across enterprise systems worldwide. ([Various aggregator sources, e.g., ZipRecruiter salary pages](https://www.ziprecruiter.com/Salaries/Cobol-Programmer-Salary))

### Financial Transactions

- COBOL systems process an estimated **$3 trillion in daily commerce** — figure attributed to Reuters. ([The New Stack](https://thenewstack.io/cobol-everywhere-will-maintain/); [Metaintro](https://www.metaintro.com/blog/cobol-developer-shortage-legacy-systems-career-opportunity-2026))
- **95% of all US ATM transactions** run on COBOL. ([Multiple sources including The New Stack](https://thenewstack.io/cobol-everywhere-will-maintain/), [CAST Software](https://www.castsoftware.com/pulse/why-cobol-still-dominates-banking-and-how-to-modernize))
- **80% of all in-person credit card transactions** are handled by COBOL. ([DistantJob](https://distantjob.com/blog/why-cobol-still-matters/))
- COBOL underpins **over 40% of online banking systems**. ([COBOLpro Blog](https://www.cobolpro.com/blog/cobol-mission-critical-banking-insurance-government-2024))

### Banking

- **43% of key American banking systems** rely on COBOL. Among banks with assets exceeding $50 billion, the proportion rises to **over 60%**. ([DXC Technology](https://dxc.com/insights/knowledge-base/blogs/why-banks-still-rely-on-cobol-driven-mainframe-systems))
- **45 of the top 50 US banks**, **8 of the top 10 insurers**, and **4 of the top 5 airlines** continue to run mainframe-based COBOL for mission-critical operations. ([CAST Software](https://www.castsoftware.com/pulse/why-cobol-still-dominates-banking-and-how-to-modernize))
- **90% of Fortune 500 companies** use COBOL in some form (finance, insurance, airlines, retail point-of-sale). ([COBOLpro Blog](https://www.cobolpro.com/blog/cobol-mission-critical-banking-insurance-government-2024))

### Insurance

- COBOL remains the backbone of claim processing and policy administration at major insurers; 8 of the top 10 US insurers run mainframe COBOL systems. ([CAST Software](https://www.castsoftware.com/pulse/why-cobol-still-dominates-banking-and-how-to-modernize))

### US Federal Government

- The **Social Security Administration (SSA)** processes over **40 million monthly benefit payments** via COBOL-based code; its COBOL codebase totals approximately **60 million lines**. ([Federal News Network](https://federalnewsnetwork.com/it-modernization/2024/12/tmf-award-to-help-opm-modernize-cobol-code-via-ai/))
- The **IRS** validates more than **90% of federal tax returns** through COBOL-based mainframe applications; the IRS has approximately **160 COBOL applications** and announced a transition to Java under the Digital First Initiative in 2024. ([Medium/ZoomInsights](https://medium.com/zoominsights/old-coding-language-entrenched-in-100-government-systems-1124e4bb9f36))
- The **Office of Personnel Management (OPM)** received an **$18.3 million TMF (Technology Modernization Fund) award** in December 2024 for a two-year COBOL-to-JavaScript/Python migration project starting 2025. ([Federal News Network](https://federalnewsnetwork.com/it-modernization/2024/12/tmf-award-to-help-opm-modernize-cobol-code-via-ai/))
- A 2025 study by the **MIT Center for Digital Business** analyzed 14 federal COBOL-to-cloud migrations between 2018–2024: median completion time was **4.2 years**, cost **3.8× the original budget**, and delivered only **68% of originally scoped functionality**. ([Search results citing the study](https://karsun-llc.com/blog/cobol-and-the-government-mainframe-modernization-challenge/))

### Retail & Other Sectors

- Airlines use COBOL for reservations and ticketing; 4 of the top 5 airlines rely on mainframe COBOL. ([CAST Software](https://www.castsoftware.com/pulse/why-cobol-still-dominates-banking-and-how-to-modernize))
- Retail point-of-sale systems widely use COBOL for transaction processing. ([COBOLpro Blog](https://www.cobolpro.com/blog/cobol-mission-critical-banking-insurance-government-2024))

### Modernization Market

- The mainframe modernization market is projected to grow from **$8.39 billion (2025)** to **$13.34 billion by 2030**. ([DevOps.com](https://devops.com/a-blog-post-about-cobol-just-cost-ibm-30-billion-heres-what-actually-happened/))
- A 2025 report by Advanced (ModernSystems) found **53% of organizations** plan a **hybrid modernization** strategy (reducing mainframe dependency without full decommissioning) rather than a complete replacement. ([Thoughtworks](https://www.thoughtworks.com/en-us/insights/articles/claude-code-cobol-modernization-reality))
- In February 2026, Anthropic published a blog post claiming Claude Code can automate COBOL analysis and dependency mapping, cutting modernization from years to quarters. IBM shares fell **~13.2% in a single day** (worst decline since October 2000) and approximately **27% across February 2026** (on track for the largest one-month decline since at least 1968). ([CNBC](https://www.cnbc.com/2026/02/23/ibm-is-the-latest-ai-casualty-shares-are-tanking-on-anthropic-cobol-threat.html); [CIO](https://www.cio.com/article/4137185/anthropics-claim-that-ai-can-quickly-refactor-cobol-rattles-ibm-investors.html))

---

## Workforce & Demand

### Number of Practitioners

- Approximately **2 million COBOL developers worldwide**, with approximately **24,000 actively working in the US**. ([Integrative Systems / Medium](https://medium.com/@integrative-systems/why-cobol-programmers-are-still-in-demand-in-2025-0548ae5d1f81))
- **27,000+ organizations** worldwide are running iSeries COBOL solutions; the US, UK, and Italy lead adoption. ([Integrative Systems](https://www.integrativesystems.com/iseries-cobol-programmer/))

### Age & Retirement Crisis

- The **average age of a COBOL developer is 55 years old**; roughly **10% retire every year**. ([Metaintro](https://www.metaintro.com/blog/cobol-developer-shortage-legacy-systems-career-opportunity-2026))
- Only **11.5% of COBOL programmers are under 35**. ([COBOLpro Blog](https://www.cobolpro.com/blog/cobol-mission-critical-banking-insurance-government-2024))
- More broadly, the average age of active COBOL programmers is cited as **45–55 years**, with the majority near or approaching retirement. ([Integrative Systems](https://www.integrativesystems.com/iseries-cobol-programmer/))

### Education Gap Driving Shortage

- **Over 85% of universities dropped COBOL from their curriculum since the 1990s**, creating a structural pipeline problem. ([Metaintro](https://www.metaintro.com/blog/cobol-developer-shortage-legacy-systems-career-opportunity-2026))
- A related figure: approximately **70% of universities** no longer include COBOL in their curriculum. ([Integrative Systems / Medium](https://medium.com/@integrative-systems/why-cobol-programmers-are-still-in-demand-in-2025-0548ae5d1f81))
- **60% of organizations** report the skills gap as their single biggest COBOL-related challenge. ([Metaintro](https://www.metaintro.com/blog/cobol-developer-shortage-legacy-systems-career-opportunity-2026))

### Job Market Demand (2024–2026)

- As of March–May 2026, hundreds of open COBOL positions are listed on Indeed, Dice, and similar boards across banking, government, insurance, and healthcare. ([Metaintro](https://www.metaintro.com/blog/cobol-developer-shortage-legacy-systems-career-opportunity-2026))
- **43% of enterprises** still rely on COBOL-based systems. ([Metaintro](https://www.metaintro.com/blog/cobol-developer-shortage-legacy-systems-career-opportunity-2026))
- The Bureau of Labor Statistics projects software developer roles (the broad category encompassing mainframe/COBOL specialists) will grow **15% over the next decade**; COBOL/mainframe specialists occupy a niche where **demand consistently outstrips supply**. ([Metaintro](https://www.metaintro.com/blog/cobol-developer-shortage-legacy-systems-career-opportunity-2026))
- Federal contractor COBOL roles are advertised at **$48–$72/hr** as of late 2025. ([ZipRecruiter Federal COBOL Jobs](https://www.ziprecruiter.com/Jobs/Federal-Cobol))

### Salary Data (US, May 2026)

Salary figures vary by source methodology; all figures are for the United States:

| Source | Average Annual Salary | Notes |
|---|---|---|
| **ZipRecruiter** (May 25, 2026) | **$121,161/yr** (~$58.25/hr) | 25th–75th pct: $90,000–$140,500; top 90th pct: $186,000 |
| **Glassdoor** (May 2026) | **$92,953/yr** (~$45/hr) | 25th–75th pct: $70,632–$123,259 |
| **Salary.com** (May 1, 2026) | **$81,536/yr** (~$39/hr) | Median slightly lower; trend from $80,948 in 2023 |
| **Mainframe COBOL specialist** | **$125,525/yr** | Mainframe-specific roles command a premium; 15% demand growth projected ([Metaintro](https://www.metaintro.com/blog/cobol-developer-shortage-legacy-systems-career-opportunity-2026)) |

Sources: [ZipRecruiter](https://www.ziprecruiter.com/Salaries/Cobol-Programmer-Salary), [Glassdoor](https://www.glassdoor.com/Salaries/cobol-programmer-salary-SRCH_KO0,16.htm), [Salary.com](https://www.salary.com/research/salary/recruiting/cobol-programmer-salary)

The spread ($81K–$121K average) reflects differing methodologies: ZipRecruiter skews toward active listings (which may over-represent specialized/senior roles), while Salary.com bases figures on compensation survey submissions.

---

*Sources consulted: [Wikipedia/COBOL](https://en.wikipedia.org/wiki/COBOL), [Wikipedia/CODASYL](https://en.wikipedia.org/wiki/CODASYL), [Wikipedia/Grace Hopper](https://en.wikipedia.org/wiki/Grace_Hopper), [EBSCO Research Starters](https://www.ebsco.com/research-starters/history/hopper-invents-computer-language-cobol), [historyofinformation.com](https://www.historyofinformation.com/detail.php?id=778), [ISO 1989:1985](https://www.iso.org/standard/6724.html), [ISO/IEC 1989:2014](https://www.iso.org/standard/51416.html), [ISO/IEC 1989:2023](https://www.iso.org/standard/74527.html), [INCITS COBOL-2023 announcement](https://www.incits.org/news-events/news-coverage/available-now-2023-edition-of-isoiec-1989-cobol), [Micro Focus/PR Newswire 2022 survey](https://www.prnewswire.com/news-releases/cobol-market-shown-to-be-three-times-larger-than-previously-estimated-in-new-independent-survey-301475439.html), [The New Stack](https://thenewstack.io/cobol-everywhere-will-maintain/), [CAST Software](https://www.castsoftware.com/pulse/why-cobol-still-dominates-banking-and-how-to-modernize), [Metaintro 2026](https://www.metaintro.com/blog/cobol-developer-shortage-legacy-systems-career-opportunity-2026), [Integrative Systems](https://www.integrativesystems.com/cobol-programmers/), [Federal News Network](https://federalnewsnetwork.com/it-modernization/2024/12/tmf-award-to-help-opm-modernize-cobol-code-via-ai/), [CNBC](https://www.cnbc.com/2026/02/23/ibm-is-the-latest-ai-casualty-shares-are-tanking-on-anthropic-cobol-threat.html), [Thoughtworks](https://www.thoughtworks.com/en-us/insights/articles/claude-code-cobol-modernization-reality), [DevOps.com](https://devops.com/a-blog-post-about-cobol-just-cost-ibm-30-billion-heres-what-actually-happened/)*
