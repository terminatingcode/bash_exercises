# BASH Exercises
For easy reference to BASH scripting, check out [devhints.io/bash](https://devhints.io/bash)

## Hello World
create a script that prints:

```
Hello World
```

<details>
<summary>Answer</summary>

```
#!/bin/bash

echo "Hello World"
```
</details>

## Utilities
create a script that prints:

```
Hello $username, it is $HH:MM" as terminal output 
```
<details>
<summary>Answer</summary>

```
#!/bin/bash

echo "Hello $(whoami), it is $(date +"%H:%M")"
```
</details>

## Environment Variables 
create a script that prints:
```
"My git editor: _"
"My default shell: _"
```

<details>
  <summary>Answer</summary>

```
#!/bin/bash

echo "My git editor: $GIT_EDITOR"
echo "My default shell: $SHELL"
```

</details>

## Shell Variables
create a script that prints:
```
Name of the script: _
First Argument: _
All arguments: _
Current PID: _
```

<details>
  <summary>Answer</summary>

```
#!/bin/bash

echo "Name of the script: $0"
echo "First argument: $1"
echo "All arguments: $*"
echo "Current PID: $$"
```

</details>

## Parameter Expansion
### Substitution
create a script that replaces the word "world" with the word "planet" from the sentence "hello world". See [parameter expansion](https://www.gnu.org/software/bash/manual/html_node/Shell-Parameter-Expansion.html)


<details>
  <summary>Answer</summary>

```
#!/bin/bash

string="hello world"

echo ${string/world/planet}
```

</details>

## For Loops
create a script that counts from 1-10. Use a c-like for loop or a range or both!

<details>
  <summary>Answer</summary>

```
#!/bin/bash

# c-like loop
for ((i = 1 ; i <= 10 ; i++)); do
  echo $i
done

# iterate over a range
for i in {1..10}; do
  echo $i
done
```

</details>

## Arrays
create a script that defines an array of animals and prints:
```
Number of animals: _
Second animal: _
All animals: _
All animals having removed the second animal: _
```

<details>
  <summary>Answer</summary>

```
#!/bin/bash

Animals=('dog' 'cat' 'sheep' 'elephant')

echo "Number of animals: ${#Animals[@]}"
echo "Second animal: ${Animals[1]}"
echo "All animals: " "${Animals[@]}"
unset Animals[1]
echo "All animals having removed the second animal: " "${Animals[@]}"
```

</details>

## Dictionaries aka Associative Arrays (BASH 4+ only)
create a script that creates a dictionary of different music genres and an example musician. Then print out your dictionary.
For more info on `declare` see [bash declare](https://www.computerhope.com/unix/bash/declare.htm)


<details>
  <summary>Answer</summary>

```
#! /usr/bin/env bash
# I've used /usr/bin/env bash here to use the latest downloaded version of bash that I have installed and set as my SHELL of choice in MacOS

declare -A genres

genres[blues]="B.B. King"
genres[hiphop]="Snoop Dogg"
genres[punk]="Sex Pistols"
genres[pop]="Britney Spears"

echo "${genres[@]}"
```

</details>

## Conditionals
create a script that prints out whether a string is empty or not. For bonus points, takes this as a command argument.
See [Bash Conditional Expressions](https://www.gnu.org/savannah-checkouts/gnu/bash/manual/bash.html#Bash-Conditional-Expressions)


<details>
  <summary>Answer</summary>

```
#!/bin/bash

string=$1

if [[ -z "$string" ]]; then
  echo "the string is empty"
else
  echo "the string $string is not empty, duh"
fi
```

</details>

### File Conditionals
create a script that prints out whether a file exists or not. For bonus points, takes this as a command argument and confirm it's set.
See [Bash Conditional Expressions](https://www.gnu.org/savannah-checkouts/gnu/bash/manual/bash.html#Bash-Conditional-Expressions)

<details>
  <summary>Answer</summary>

```
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
```

</details>

## Functions
create a function that takes an argument and prints it as part of a sentence.

<details>
  <summary>Answer</summary>

```
#!/bin/bash

helloFunc () {
  echo "You have my attention, $1"
}

helloFunc "do I have yours?"
```

</details>

## Handling Signals
create a script that traps a SIGINT and prints a message instead. Be sure to also print your PID or press ctrl-T to get the PID of a running process
You can then kill the process like so: `kill PID`

<details>
  <summary>Answer</summary>

```
echo $$
while true; do
  trap 'echo "SIGINT caught!"' SIGINT
done
```

</details>
