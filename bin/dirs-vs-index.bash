#!/usr/bin/env bash
#
# dirs-vs-index.bash v1.0
#
# Compare folders listed in the root directory to those outlined in `index.txt`
# This shows data set maintainers which folders aren't being indexed properly
#
# Written by:    Derek Callaway [decal (AT) sdf (D0T) org]
# Last Modified: Wed Oct 26 13:48:05 EDT 2016
# Tested On:     Kali GNU/Linux Rolling
#

cd ..

LS=$(find . -maxdepth 1 -type d -not -iname '.*' -exec echo `realpath {}` \;)

for d in $LS
  do declare avar="$(basename $d)"

  [ ! "$avar" ] && continue

  echo -ne "\033[34m${avar}\033[m "

  echo -ne $(grep --color=ALWAYS -Hirna "${avar}" index.txt | awk 'BEGIN { FS=":"; } END { print($1); }')

  echo
done 2>/dev/null | more

exit 0
