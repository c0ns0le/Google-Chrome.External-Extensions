#!/usr/bin/env bash
{ set +x; } 2>/dev/null

path="${BASH_SOURCE[0]%/*}/publicfiles/Library/Application Support/Google/Chrome/External Extensions"
{ set -x; cd "$path" || exit; { set +x; } 2>/dev/null; }
( set -x; Google.Chrome.External-Extensions )

