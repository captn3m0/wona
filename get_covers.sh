#!/bin/bash
for file in *.pdf
do
  base=`basename "$file" .pdf`
  if [[ ! -f "$base.jpg" ]]; then
      echo "Converting $file"
      pdftk "$file" cat 1 output /tmp/cover.pdf 2>/dev/null
      convert -quality 60% -size 100x142 -resize 100x142 /tmp/cover.pdf "$base.jpg"
    fi
done
