#!/bin/bash

file=$1

if [[ -z "$file" ]]; then
  echo "you must input a file name as an argument: ./fileExists.bash FILE"
fi

if [[ -f $file ]]; then
  echo "file $file exists!"
else
  echo "file $file does not exist"
fi
