#!/bin/bash

string=$1

if [[ -z "$string" ]]; then
  echo "the string is empty"
else
  echo "the string $string is not empty, duh"
fi

