#!/bin/bash

name=$1
drink=$2

user=$(whoami)
whereami=$(pwd)
date=$(date)

echo "Good Morning $name!"

sleep 1

echo "You're looking good today $name!"

sleep 1

echo "$name needs $drink!"

sleep 2

echo "You are currently logged in as $user and you are in the directory $whereami. Also today is: $date"
