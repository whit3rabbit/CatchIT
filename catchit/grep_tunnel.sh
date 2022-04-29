#!/bin/bash
egrep -nroI $4 --exclude-dir=.git --exclude-dir=.svn --exclude-dir=node_modules --exclude-dir=venv --exclude='regexs.json' "$1" $2 | egrep -iv -f $3
