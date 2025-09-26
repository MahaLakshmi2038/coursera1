#!/bin/bash

# Function to count number of files
function file_count {
  echo $(ls -1 | wc -l)
}

echo "Welcome to the Guessing Game!"
echo "How many files are in the current directory?"
correct=$(file_count)

guess=-1

while [[ $guess -ne $correct ]]
do
  read -p "Enter your guess: " guess
  if [[ $guess -lt $correct ]]
  then
    echo "Your guess is too low. Try again."
  elif [[ $guess -gt $correct ]]
  then
    echo "Your guess is too high. Try again."
  fi
done

echo "Congratulations! You guessed it right!"
echo "There are $correct files in the current directory."
