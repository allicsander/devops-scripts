#!/bin/bash

FILES=("file1" "file2" "file3")

function create_file(){
  local FILENAME="$1"
  local PERMISSIONS="$2"
  touch "${FILENAME}"
  chmod "${PERMISSIONS}" "${FILENAME}"
  ls -l "${FILENAME}"
}

for ELEMENT in ${FILES[@]}
do
	create_file "${ELEMENT}" "a+x"
done

echo "Created all the files with a function"
exit 0
