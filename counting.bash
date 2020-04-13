#!/bin/bash

# c-like loop
for ((i = 1 ; i <= 10 ; i++)); do
  echo $i
done

# iterate over a range
for i in {1..10}; do
  echo $i
done
