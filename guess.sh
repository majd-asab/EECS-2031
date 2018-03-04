#!/bin/bash

# The purpose of this script is guess the random number generated.

# generate the random number
randomNumber=$((1 + RANDOM % 64))

# attempts counter
count=0

# welcome and prompt to guess
echo "Welcome to the number game."
echo "Guess a number between 1 and 64 (inclusive)."


# read user input
while true
do
	count=`expr $count + 1`
	read number
	if [ $number -eq $randomNumber ]; then
		echo "You won!"
		break
	elif [ $number -lt $randomNumber ]; then
		echo "Too small."
		echo "Try again."
	elif [ $number -gt $randomNumber ]; then
		echo "Too big."
		echo "Try again."
	fi	

	if [ $count -eq 6 ]; then
		echo "You lost!"
		break
	fi
			
done
