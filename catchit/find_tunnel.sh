#!/bin/bash
find $1 -not -path "*/venv/*" -not -empty 2>/dev/null | egrep $3 $2
