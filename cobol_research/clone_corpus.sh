#!/usr/bin/env bash
#
# clone_corpus.sh — regenerate the COBOL research corpus under ./repos/
#
# This script is the authoritative MANIFEST of the corpus. The raw third-party
# source is intentionally NOT committed to this frontend repo (see ../cobol_research/.gitignore):
# the repos mix permissive, copyleft (GPL), and no-license terms, and total >150 MB.
# Run this script to reproduce the corpus locally for analysis.
#
#   cd cobol_research && ./clone_corpus.sh
#
# Shallow clones (--depth 1) keep it small. License class is annotated per repo:
#   [PERMISSIVE] MIT/Apache-2.0/BSD/CC-BY/Public-Domain  -> safe to vendor (mind attribution)
#   [COPYLEFT]   GPL-2.0/GPL-3.0                          -> do NOT vendor without legal review
#   [NO-LICENSE] none declared                            -> "all rights reserved" by default
#
set -uo pipefail
cd "$(dirname "$0")"
mkdir -p repos
clone() { # $1=url  $2=dir  $3=license-note
  if [ -d "repos/$2" ]; then echo "  [skip] $2 (exists)"; return; fi
  printf '  >> %-34s %s\n' "$2" "$3"
  git clone --depth 1 "$1" "repos/$2" >/dev/null 2>&1 || echo "     !! clone failed: $1"
}

echo "== Permissive (safe to vendor) =="
clone https://github.com/uwol/proleap-cobol-parser.git                       proleap-cobol-parser     "[PERMISSIVE] MIT"
clone https://github.com/meyfa/CobolCraft.git                                CobolCraft               "[PERMISSIVE] MIT"
clone https://github.com/openmainframeproject/cobol-programming-course.git   cobol-programming-course "[PERMISSIVE] CC-BY-4.0"
clone https://github.com/otterkit/otterkit-cobol.git                         otterkit-cobol           "[PERMISSIVE] Apache-2.0"
clone https://github.com/IBM/cobol-is-fun.git                                cobol-is-fun             "[PERMISSIVE] Apache-2.0"
clone https://github.com/pwittchen/learning-cobol.git                        learning-cobol           "[PERMISSIVE] Apache-2.0"
clone https://github.com/DillonDepeel/Cobol-Programming-Collection.git       Cobol-Programming-Collection "[PERMISSIVE] MIT"
clone https://github.com/azac/cobol-on-wheelchair.git                        cobol-on-wheelchair      "[PERMISSIVE] MIT"
clone https://github.com/lauryndbrown/Cisp.git                               Cisp                     "[PERMISSIVE] MIT"
clone https://github.com/aws-samples/aws-mainframe-modernization-carddemo.git aws-carddemo            "[PERMISSIVE] Apache-2.0"
clone https://github.com/jmsdnns/webbol.git                                  webbol                   "[PERMISSIVE] Public-Domain"
clone https://github.com/shamrice/COBOL-Examples.git                         shamrice-COBOL-Examples  "[PERMISSIVE] MIT"
clone https://github.com/exercism/cobol.git                                  exercism-cobol           "[PERMISSIVE] MIT"
clone https://github.com/PhaseChangeSoftware/cobol-defects-suite.git         cobol-defects-suite      "[PERMISSIVE] MIT"
clone https://github.com/victorqribeiro/perceptronCobol.git                  perceptronCobol          "[PERMISSIVE] MIT"
clone https://github.com/krisds/koopa.git                                    koopa                    "[PERMISSIVE] BSD"

echo "== Copyleft (GPL — analysis only, do not vendor without review) =="
clone https://github.com/opensourcecobol/opensource-cobol.git               opensource-cobol         "[COPYLEFT] GPL-2.0"
clone https://github.com/Martinfx/Cobol.git                                  Martinfx-Cobol           "[COPYLEFT] GPL-3.0"

echo "== No declared license (analysis only) =="
clone https://github.com/writ3it/cobol-examples.git                          cobol-examples           "[NO-LICENSE] none"

echo
echo "== COBOL file count in corpus =="
find repos -type f \( -iname '*.cbl' -o -iname '*.cob' -o -iname '*.cobol' \
  -o -iname '*.cpy' -o -iname '*.copy' -o -iname '*.cblle' -o -iname '*.pco' \) 2>/dev/null | wc -l
