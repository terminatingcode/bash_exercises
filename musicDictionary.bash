#! /usr/bin/env bash

declare -A genres

genres[blues]="B.B. King"
genres[hiphop]="Snoop Dogg"
genres[punk]="Sex Pistols"
genres[pop]="Britney Spears"

echo "${genres[@]}"
