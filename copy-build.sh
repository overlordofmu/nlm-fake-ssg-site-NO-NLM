#!/bin/bash

FILE_LIST=(
Page-2/
green-river.png
index.html
large.jpg
)

FROM="pre/"
TO="post/"

echo rm -Rf "${TO}"*
rm -Rf "${TO}"*

for i in "${FILE_LIST[@]}" ; do
  if [ "${i:(-1)}" == "/" ] ; then
    echo cp -R "${FROM}""${i%/}" "${TO}"
    cp -R "${FROM}""${i%/}" "${TO}"
  else
    echo cp "${FROM}""$i" "${TO}"
    cp "${FROM}""$i" "${TO}"
  fi
done

echo "Fake build complete!"

exit 0
