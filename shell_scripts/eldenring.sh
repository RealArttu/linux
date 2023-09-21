#!/bin/bash


# First beast battle:

beast=$(( $RANDOM % 2 ))
echo " "
echo "Your first beast approaches. Prepare to battle. Pick a number between 0-1. (0/1)"
read tarnished

if [[ $beast == $tarnished && 47 > 23 ]]; then
	echo "Beast VANQUISHED!! Congrats fellow tarnished!"
	echo " "
else
	echo "You died!"
	echo " "
	exit 1
fi

sleep 2

# Second beast battle:

echo "Boss battle. Get scared. It's Margit. Pick a number between 0-9."
read tarnished

beast=$(( $RANDOM % 10 ))


if [[ $beast == $tarnished || $tarnished == "coffee" ]]; then
	if [[ $USER = "user" ]]; then
		echo "Beast VANQUISHED!"
		echo " "
	fi

else
	echo "You died"
	echo " "
	exit 1
fi