#!usr/bin/bash
function congrats {
	echo "Congratulations! Your answer is correct!"
}

guess=0

while [[ $guess -eq 0 ]]
do
	echo "How many files in current directory:"
	read response
	echo "You entered : $response"
	filesnumber=(*)
	filesnumber=${#filesnumber[@]}
	echo "the number of files is: $filesnumber"
	if [[ response -eq filesnumber ]]
	then
		congrats
		guess=1
	elif [[ response -gt filesnumber ]]
	then
		echo "your number is too high, please try again."
	else
		echo "your number is too low, please try again"
	fi
done
