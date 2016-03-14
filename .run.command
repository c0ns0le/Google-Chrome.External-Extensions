#!/usr/bin/env bash
{ set +x; } 2>/dev/null

! [ -x "${BASH_SOURCE[0]}" ] && ( set -x; chmod +x "${BASH_SOURCE[0]}" )
! [ -t 1 ] && ( set -x; open "${BASH_SOURCE[0]}" ) && exit

[ -e ~/.command.sh ] && { 
	{ set -x; . ~/.command.sh || exit; { set +x; } 2>/dev/null; }
}

{ set -x; cd "${BASH_SOURCE[0]%/*}"; { set +x; } 2>/dev/null; }
run=".run.sh"; [ -e run.sh ] && run="run.sh"
( set -x; . "$PWD"/"$run" 2>&1 ) | tee "$TMPDIR$PPID".log; exit ${PIPESTATUS[0]}
# ~/.bash_logout: "$TMPDIR$$".log
