#!/bin/bash

Animals=('dog' 'cat' 'sheep' 'elephant')

echo "Number of animals: ${#Animals[@]}"
echo "Second animal: ${Animals[1]}"
echo "All animals: " "${Animals[@]}"
unset Animals[1]
echo "All animals having removed the second animal: " "${Animals[@]}"


