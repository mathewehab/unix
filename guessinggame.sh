#!/usr/bin/env bash
filenum=$(ls | wc -l)

function guess_filenum {
	read guess
	if [[ $guess -eq $filenum ]]
	then
		echo "Great job! You guessed it correctly!"
		echo "Hooray!"
		echo "  Therefore, we have..."
		for f in $(ls)
		do
			echo "  - $f and "
		done
		echo "    ... and that's where it ended."
	else
		if [[ $guess -gt $filenum ]]
		then
			echo "Please try again with a smaller number and press Enter:"
			guess_filenum
		else
			echo "Please try again with a larger number and press Enter:"
			guess_filenum
		fi
	fi
}
echo "Greetings and welcome to the guessing game!"
echo "Let's play a game - try to guess the number of files in the current directory (without peeking!) and press Enter:"
guess_filenum
