#!/usr/bin/env bash
{ set +x; } 2>/dev/null


path=~/"Library/Application Support/Google/Chrome/External Extensions"
( set -x; open -R "$path" )
