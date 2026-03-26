#!/bin/bash

if [ $# -ne 2 ]; then
  echo "You didn't provide 2 files. Please enter them now:"
  read -p "Enter first file: " file1
  read -p "Enter second file: " file2
else
  file1=$1
  file2=$2
fi

if cmp -s "$file1" "$file2"; then
  echo "The contents of $file1 and $file2 are the same. Deleting $file2..."
  rm "$file2"
else
  echo "The contents of $file1 and $file2 are different."
fi
