#!/usr/bin/env -S bash -euo pipefail

ptn="${1?Missing pattern}"
magic run test --filter "${ptn}" --diagnostic-format json |
    jq -r ".children[].children[] | select(.testID | test(\"${ptn}\")) | .stdOut"