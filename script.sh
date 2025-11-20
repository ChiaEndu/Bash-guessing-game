#!/bin/bash

#X=$(( 0 + RANDOM % (15- 0 + 1) ))
x=9
echo "==============================================="
echo "Guess a number to win between 0 to 15:"
echo "==============================================="
read -p "Enter the value you guess:" y
if [[ $y -eq $x ]]; then 
echo "You Win"
elif [[ $y -lt $x ]]; then
echo "================================================="
echo "You loss, below winning Number"
echo "================================================="
elif [[ $y -gt $x ]]; then
echo "================================================="
echo "You loss, above Winning Number"
echo "================================================="
else
echo "Invalid number, not within guessing range"
fi

