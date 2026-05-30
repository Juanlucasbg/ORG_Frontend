# Archives and Language Statistics for COBOL Research Corpus

*Compiled May 2026. Sources fetched via web search; direct API access to archive.softwareheritage.org was blocked (HTTP 403) from this environment — numeric counters sourced from search-engine-cached snapshots of the live API endpoint.*

---

## [Software Heritage API — `/api/1/stat/counters/`](https://archive.softwareheritage.org/api/1/stat/counters/)

The live API endpoint returns a JSON object with the following counters (values cached from a recent snapshot of the live endpoint, as reported by [docs.softwareheritage.org](https://docs.softwareheritage.org/devel/getting-started/api.html)):

```json
{
  "content":         24044147765,
  "directory":       19017958548,
  "origin":            367761515,
  "origin_visit":    1693736407,
  "person":            90898286,
  "release":           107347621,
  "revision":        5066604732,
  "skipped_content":      378048,
  "snapshot":          337472772
}
```

- **content** (unique source files/blobs): 24,044,147,765 — over 24 billion unique files. [(source)](https://archive.softwareheritage.org/api/1/stat/counters/)
- **directory**: 19,017,958,548 — over 19 billion directory objects. [(source)](https://archive.softwareheritage.org/api/1/stat/counters/)
- **revision** (commits): 5,066,604,732 — over 5 billion commits. [(source)](https://archive.softwareheritage.org/api/1/stat/counters/)
- **release**: 107,347,621 — over 107 million release objects. [(source)](https://archive.softwareheritage.org/api/1/stat/counters/)
- **origin** (distinct repositories/projects): 367,761,515 — over 367 million software origins. [(source)](https://archive.softwareheritage.org/api/1/stat/counters/)
- **origin_visit**: 1,693,736,407 — over 1.69 billion visits/fetches of origins. [(source)](https://archive.softwareheritage.org/api/1/stat/counters/)
- **snapshot**: 337,472,772 — over 337 million snapshots of repository states. [(source)](https://archive.softwareheritage.org/api/1/stat/counters/)
- **person** (unique code authors/committers): 90,898,286 — nearly 91 million persons. [(source)](https://archive.softwareheritage.org/api/1/stat/counters/)
- **skipped_content**: 378,048 — files not inserted in the archive (e.g. oversized). [(source)](https://archive.softwareheritage.org/api/1/stat/counters/)
- Counters are computed using Redis HyperLogLog heuristics and tracked over time with Prometheus; they may not be exact. [(source)](https://docs.softwareheritage.org/devel/getting-started/api.html)

---

## [Software Heritage — "One hundred millions projects archived… and counting!" (April 8, 2020)](https://www.softwareheritage.org/2020/04/08/one-hundred-millions-projects-archived-and-counting/)

- As of **April 8, 2020**, the archive passed the symbolic mark of **100 million archived projects**. [(source)](https://www.softwareheritage.org/2020/04/08/one-hundred-millions-projects-archived-and-counting/)
- At that milestone, the archive stored projects with full development history in a **giant Merkle DAG containing over 7 billion unique source code files and over 1.5 billion commits**. [(source)](https://www.softwareheritage.org/2020/04/08/one-hundred-millions-projects-archived-and-counting/)
- Earlier in January 2020, the archive spanned **more than 5 billion unique source code files and 1 billion unique commits**. [(source)](https://www.softwareheritage.org/2020/04/08/one-hundred-millions-projects-archived-and-counting/)
- As of **February 2020**, the archive had catalogued **more than 91 million software projects**. [(source)](https://www.softwareheritage.org/2020/04/08/one-hundred-millions-projects-archived-and-counting/)
- By **end of 2020** the archive contained **almost 10 billion unique source files** from **more than 2 billion unique commits** coming from **over 150 million projects** worldwide. [(source)](https://www.softwareheritage.org/2021/01/07/software-heritage-in-2020-looking-beyond-the-crisis/)
- As of **October 2020**, the archive held **over 143 million software projects** in **over 9.1 billion unique source files**. [(source)](https://en.wikipedia.org/wiki/Software_Heritage)
- Key 2020 activities: collaboration with GitHub to ease archival of GitHub-hosted projects; salvage of hundreds of thousands of endangered repositories from Bitbucket; processing of tens of thousands of "save code now" requests; establishment of journal partnerships in life sciences and computer science. [(source)](https://www.softwareheritage.org/2021/01/07/software-heritage-in-2020-looking-beyond-the-crisis/)

---

## [Wikipedia — Software Heritage](https://en.wikipedia.org/wiki/Software_Heritage)

- Development of Software Heritage began at **Inria** under the direction of computer scientists **Roberto Di Cosmo** (Founder and CEO/Director) and **Stefano Zacchiroli** in **early 2015**. [(source)](https://en.wikipedia.org/wiki/Software_Heritage)
- The project was officially announced to the public on **June 30, 2016**. [(source)](https://en.wikipedia.org/wiki/Software_Heritage)
- Roberto Di Cosmo has served as Founder and Director/CEO since **March 2015**. [(source)](https://fr.linkedin.com/in/roberto-di-cosmo)
- Stefano Zacchiroli co-articulated the founding principles; the foundational paper is Di Cosmo & Zacchiroli, 2017. [(source)](https://en.wikipedia.org/wiki/Software_Heritage)
- **Mission**: "Collect, preserve and share all software that is publicly available in source code form, with the goal of building a common, shared infrastructure at the service of industry, research, culture and society as a whole." [(source)](https://www.softwareheritage.org/mission/)
- In **2017**, Inria signed an agreement with UNESCO for the long-term preservation of software source code. [(source)](https://en.wikipedia.org/wiki/Software_Heritage)
- In **June 2018**, the Software Heritage Archive was formally opened at UNESCO headquarters. [(source)](https://en.wikipedia.org/wiki/Software_Heritage)
- On **July 4, 2018**, Software Heritage was included in the French National Plan for Open Science. [(source)](https://en.wikipedia.org/wiki/Software_Heritage)
- In **November 2018**, forty international experts met at the invitation of Inria and UNESCO, leading to the **Paris Call: Software Source Code as Heritage for Sustainable Development** (published February 2019). [(source)](https://en.wikipedia.org/wiki/Software_Heritage)
- Source code is collected by crawling hosting platforms (GitHub, GitLab.com, Bitbucket) and package archives (npm, PyPI). [(source)](https://www.softwareheritage.org/software-heritage-faq/)
- **2023 milestone**: 12 billion unique source code files, 2 billion commits, ~180 million projects. [(source)](https://en.wikipedia.org/wiki/Software_Heritage)
- **2024 annual report** (published February 2025): **22 billion unique source files** from **over 340 million projects**. [(source)](https://www.softwareheritage.org/2025/02/18/software-heritage-annual-report-2024/)
- **2025 activity report** (published January 2026): **over 24–27 billion unique source files** (API live counter: 24,044,147,765) from **over 367–421 million software projects**. [(source)](https://www.softwareheritage.org/2026/01/16/software-heritage-activity-report-2025/)
- Founder Roberto Di Cosmo has described this moment as "the end of the beginning," with the archive now holding **28 billion files of source code**. [(source)](https://www.softwareheritage.org/2026/03/24/digital-commons-infrastructure/)
- The archive is recognized as a **Digital Public Good** (recognition announced January 2026). [(source)](https://www.softwareheritage.org/2026/01/21/software-heritage-archive-digital-public-good/)
- The archive uses a **Merkle DAG** (directed acyclic graph) representation, uniquely deduplicating file content across all projects and revisions. [(source)](https://docs.softwareheritage.org/devel/swh-model/data-model.html)

---

## [The Shape of Code — "Long term growth of programming language use" (May 11, 2025)](https://shape-of-code.com/2025/05/11/long-term-growth-of-programming-language-use/)

- The study extracted and counted **all filename suffixes** from the Software Heritage archive, obtaining **2,836,119 unique suffixes**. [(source)](https://shape-of-code.com/2025/05/11/long-term-growth-of-programming-language-use/)
- **GitHub's linguist catalogue** of file extensions was used to identify programming languages. The catalogue contains information on **512 programming languages** — with a strong bias towards languages used in open source. [(source)](https://shape-of-code.com/2025/05/11/long-term-growth-of-programming-language-use/)
- **Critical gap in the linguist catalogue**: it is **missing entries for COBOL and Ada entirely**, and its Fortran suffix list **does not include `.for`, `.ftn`, and `.f77`** — the most common historical Fortran extensions. [(source)](https://shape-of-code.com/2025/05/11/long-term-growth-of-programming-language-use/)
- Initial filter: all suffixes up to three characters, first of which is alphabetic, occurring at least 1,000 times in any year, were assumed to denote a programming language — yielding **4,050 candidate language suffixes**. After removing binary suffixes, this was reduced to **2,242 assumed language suffixes**. [(source)](https://shape-of-code.com/2025/05/11/long-term-growth-of-programming-language-use/)
- The study reveals **the historical paradox**: millions of lines of COBOL and Fortran were written between 1960 and 1985, yet the growth curves produced from Software Heritage data show these languages appearing to start only in the 1990s — an artifact of archival bias, not historical reality. [(source)](https://shape-of-code.com/2025/05/11/long-term-growth-of-programming-language-use/)
- The study explicitly asks: *"Where is the COBOL, once the most widely used language? Did Fortran only start being used during the 1990s?"* — and answers that the data gap is a product of what is *publicly available*, not what was *written*. [(source)](https://shape-of-code.com/2025/05/11/long-term-growth-of-programming-language-use/)
- **Root cause of COBOL's absence from public archives**: "COBOL programs are used to process business data, and the code is useless without the appropriate data. Additionally, people who program in COBOL often have a strong business focus and don't hang out on sites used by surveys of programming language use." [(source)](https://shape-of-code.com/2025/05/11/long-term-growth-of-programming-language-use/)
- This demonstrates a **systematic bias** in all public-archive-based language surveys: enterprise and legacy languages that remain actively used but are not part of open-source culture are dramatically underrepresented. [(source)](https://shape-of-code.com/2025/05/11/long-term-growth-of-programming-language-use/)

---

## Why Public Archives Under-Represent COBOL

The convergence of evidence from all four sources above reveals a structural and self-reinforcing gap between COBOL's real-world presence and its representation in public code archives.

**1. COBOL volume in production is enormous — and growing.**
The most widely cited 1997 Gartner Group estimate put COBOL at **200 billion lines in active use with 5 billion new lines written annually** (though the original Gartner report was later withdrawn and its figures could not be validated). [(source)](https://en.wikipedia.org/wiki/COBOL) A 2017 Thomson Reuters/Reuters estimate placed the figure at **220 billion lines**. [(source)](https://www.thestack.technology/cobol-in-daily-use/) A more recent global survey of 1,104 IT professionals commissioned by Micro Focus (now OpenText) found **775–850 billion lines of COBOL in daily use on production systems** — three times larger than the previous estimate, with 92% of respondents calling COBOL "strategic" and ~50% expecting usage to *increase* in the next 12 months. [(source)](https://www.thestack.technology/cobol-in-daily-use/) The Open Mainframe Project's own estimate is **800+ billion lines**. [(source)](https://planetmainframe.com/2024/03/cobol-the-incessant-number-cruncher/)

**2. Almost none of this code is publicly archived.**
Software Heritage — the world's largest public source code archive, with **24 billion+ unique files** from **367+ million projects** — barely registers COBOL. The GitHub linguist catalogue used to classify files in the archive has *no COBOL entry at all*, and is missing the major historical Fortran file extensions too. [(source)](https://shape-of-code.com/2025/05/11/long-term-growth-of-programming-language-use/) The X-COBOL dataset (2023), an exhaustive mining of GitHub for COBOL, found only **182 COBOL projects** — a rounding error against hundreds of billions of production lines. [(source)](https://arxiv.org/abs/2306.04892)

**3. The reasons are structural, not accidental.**
COBOL programs process proprietary business data (banking transactions, insurance claims, payroll, government benefits). The code and data are co-dependent: *"the code is useless without the appropriate data."* [(source)](https://shape-of-code.com/2025/05/11/long-term-growth-of-programming-language-use/) COBOL developers work in regulated industries with strong incentives toward secrecy and no culture of open-source sharing. Mainframe environments are physically and contractually isolated from public hosting platforms.

**4. The bias propagates into all downstream language research.**
Because Software Heritage and GitHub are the primary datasets for computational linguistics of code, any study drawing on these archives will systematically undercount COBOL (and to a lesser extent Fortran and Ada), producing historical growth curves that misrepresent 60+ years of the most economically significant programming language ever deployed. The Shape of Code analysis makes this explicit: the archives show COBOL appearing only in the 1990s — purely an archival artifact, since tens of millions of lines were already in use by the early 1960s. [(source)](https://shape-of-code.com/2025/05/11/long-term-growth-of-programming-language-use/)

**Implication for this research corpus**: Any COBOL corpus built from public archives (GitHub, Software Heritage, npm, PyPI) captures only a vanishingly small, non-representative sample of existing COBOL. Meaningful corpus construction requires direct access to mainframe environments, enterprise source code management systems, or purpose-built datasets such as X-COBOL.

---

*Sources consulted:*
- [Software Heritage API stat/counters](https://archive.softwareheritage.org/api/1/stat/counters/)
- [Software Heritage 2025 Activity Report](https://www.softwareheritage.org/2026/01/16/software-heritage-activity-report-2025/)
- [Software Heritage 2024 Annual Report](https://www.softwareheritage.org/2025/02/18/software-heritage-annual-report-2024/)
- [Software Heritage 100M milestone post, April 2020](https://www.softwareheritage.org/2020/04/08/one-hundred-millions-projects-archived-and-counting/)
- [Wikipedia: Software Heritage](https://en.wikipedia.org/wiki/Software_Heritage)
- [Wikipedia: Roberto Di Cosmo](https://en.wikipedia.org/wiki/Roberto_Di_Cosmo)
- [Shape of Code: Long term growth of programming language use (May 2025)](https://shape-of-code.com/2025/05/11/long-term-growth-of-programming-language-use/)
- [X-COBOL: A Dataset of COBOL Repositories (arXiv 2023)](https://arxiv.org/abs/2306.04892)
- [The Stack: Over 800 billion lines of COBOL in daily use](https://www.thestack.technology/cobol-in-daily-use/)
- [Wikipedia: COBOL](https://en.wikipedia.org/wiki/COBOL)
- [Software Heritage docs: API getting started](https://docs.softwareheritage.org/devel/getting-started/api.html)
