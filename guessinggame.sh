#!/usr/bin/env bash
# File: guessinggame.sh

# Global var to determine if another question round is needed
bullseye=0

function get_files {
	# Get the number of files only in the current directory. Not recurrant.
	local lines=$(find . -maxdepth 1 -type f | wc -l | egrep -o "[0-9]+")
	echo $lines
}

function compare_guess {
	local files=$(get_files)
	
	if [[ $guess -eq $files ]]
	then
		echo "Congratulations! You got it right"
		# set the global var to 1 to exit the while loop
		bullseye=1
	elif [[ $guess -lt $files ]]
	then
		echo "Not quite there yet. Your guess was too low. PLease try again."
	else
		echo "Almost... Your guess was too high. Please try again."
	fi
}

echo "Please guess how many files are in the current directory:"

while [[ $bullseye -eq 0 ]]
do
	read guess
	if [[ $(echo $guess | egrep -o "[^0-9]+") ]]
	then
		echo "Please type in a number:"
		read guess
	fi
	
	# Run the compare
	compare_guess
done




