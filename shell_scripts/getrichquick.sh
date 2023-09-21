#!/bin/bash

echo " "
echo "What is your name?"
read name

echo ""

echo "How old are you?"
read age

echo " "

echo "Hello, $name, you are $age years old."
echo " "
sleep 2

getrich=$((( $RANDOM % 15) + $age))

echo "Let's calculate when you will be rich"
echo " "
sleep 2

echo "Calculating:"
echo ".......... (0%)"
sleep 1
echo "**........ (20%)"
sleep 2
echo "****...... (40%)"
sleep 4
echo "******.... (60%)"
sleep 3
echo "********.. (80%)"
sleep 5
echo "********** (100%)"
echo " "
sleep 2

echo "Hi $name, you are going to be rich in $getrich years."
echo " "
