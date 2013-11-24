#!/bin/bash
# First argument is the name of the pdf file
base=`basename "$1" .pdf`
echo "Converting $1"
pdftk "$1" cat 1 output /tmp/cover.pdf 2>/dev/null;
convert -quality 60% -size 100x142 -resize 100x142 /tmp/cover.pdf $base.jpg;