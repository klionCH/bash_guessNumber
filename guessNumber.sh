#!bin/bash
# Guess the Number
# 10.04.2024 svelue
# This is a simple bash script for a game where you can guess a number from 0 to 20

number=$[$RANDOM%20]
counter=0
echo "Welcome to guess the Number"
while true; do
	echo "Pleas enter a Number from 0 to 20"
	read -p "Your guess:" try
	if [[ $try =~ ^[0-9]$|^1[0-9]$|^20$ ]]; then
		if [[ $try -eq $number ]]; then
			((counter ++))
			echo "Great, you have Won!!!!"
			echo "You needed" $counter "attempts"
			break
		elif [[ $try -gt $number ]]; then
			echo "The number is smaller"
			((counter ++))
		elif [[ $try -lt zahl ]]; then
			echo "The number is larger"
			((counter ++))
		else
			echo "wrong input"
		fi
	else
		echo "wrong Input"
	fi
done

