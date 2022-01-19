#!/usr/bin/env bash
files=$(ls | wc -l)

function guess_filenum {
	read guess
	if [[ $guess -eq $files ]]
	then
		echo "Congratulation! You got it right!"
		echo "  We have"
		for f in $(ls)
		do
			echo "  - $f and "
		done
		echo "    ... that is it."
	else
		if [[ $guess -gt $files ]]
		then
			echo "Too high! Guess a lower number and press Enter :"
			guess_filenum
		else
			echo "Too low! Guess a higher number and press Enter :"
			guess_filenum
		fi
	fi
}
echo "Welcome User!"
echo "Guess the number of files in this directory and press Enter :"
guess_filenum
