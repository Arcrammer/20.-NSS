#!/bin/bash

# Bash
# Monday, July 6, 2015
# Alexander Rhett Crammer
# Full Sail University

first_name="Alexander"
declare -i age=19 
script_path=$(pwd)
random_number=897431
math_result=$((random_number * 5278))

echo "My name is $first_name and I am $age!"
echo
echo "This is version '$BASH_VERSION' of bash running the script '$0' located at '$script_path'."
echo
echo "The name of your machine is '$HOSTNAME'."
echo
echo "How many apples are there? There are $random_number apples."
echo

[[ "cat" == "cat" ]]
echo $?
[[ "cat" == "dog" ]]
echo $?
[[ 19 -lt 20 ]]
echo $?

kitty=""
doggie="dog"
[[ -z $kitty && -n $doggie ]]
echo $?
echo

first_word="Hello"
second_word=", world!"
both_words=$first_word$second_word
echo "$both_words"
echo

current_time=$(date +"%H:%M")

echo It\'s currently $current_time.
echo
printf "Name:\t%s\nID:\t%04d\n" "Alexander" "487914"
echo

fruits=("Banana" "Apple" "Pear" "Tangerine" "Orange" "Mango" "Peach" "Blueberry" "Raspberry" "Strawberry" "Blackberry")
echo ${fruits[10]}
fruits[14]="Kiwi"
echo ${fruits[14]}
fruits+=("Cherry")
echo ${fruits[15]}
echo
echo ${fruits[@]}
echo

number=4

if [ $number -gt 5 ]; then
  echo "$number is greater than five!"
else
  echo "Five is greater than $number!"
fi
echo

count=0
while [ $count -le 19 ]; do
  echo $count
  ((count+=1))
done
echo

for digit in {1..100}; do
  echo $digit
done
echo

for (( i=0; i<=10; i++ )); do
  echo "Never trust an atom. They make up everything."
done
echo

cars=("Audi" "Volkswagen" "BMW" "Honda" "MINI")
for car in ${cars[@]}; do
  echo $car
done
echo

for stuff in $(ls); do
  echo $stuff
done
echo

animal="Snow Leopard"
case $animal in
  mouse) echo "Nibble nibble";;
  cat|"Snow Leopard") echo "Pat pat on the kitty cat.";;
  dog) echo "Woof";;
  *) echo "What is your species, sir?";;
esac
echo

function sayHello {
  echo "Hello, $1! Are you doing well $2?"
}
sayHello "Alexander" "tonight"
sayHello "Armani" "this dawn"
echo

echo "You've passed these $# arguments:"
echo
for argument in ${@}; do
  echo $argument
done
echo

while getopts n:a: option; do
  case $option in
    n) name_provided=$OPTARG;;
    a) age=$OPTARG;;
  esac
done

echo $name_provided
echo $age

echo What\'s your name?
read name
echo Hello, $name!
echo