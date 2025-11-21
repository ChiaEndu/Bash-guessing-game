#!/bin/bash

while true; do
  # generate random number between 0 and 15
  x=$(( RANDOM % 16 ))

  echo "==============================================="
  echo "Guess a number to win between 0 to 15:"
  echo "==============================================="
  read -r -p "Enter the value you guess: " y

  if [[ $y -eq $x ]]; then 
      echo "You Win "
  elif [[ $y -lt $x ]]; then
      echo "================================================="
      echo "You lost. Your guess is below the winning number."
      echo "================================================="
  elif [[ $y -gt $x ]]; then
      echo "================================================="
      echo "You lost. Your guess is above the winning number."
      echo "================================================="
  else
      echo "Invalid number, not within guessing range."
  fi

  # ask user if they want to play again
  read -r -p "Do you want to play again? (y/n): " choice
  if [[ $choice != "y" ]]; then
      echo "Thanks for playing "
      break
  fi
done
