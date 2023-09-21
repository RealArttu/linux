#!/bin/bash

echo "Would you like to be stuck forever? (y/n)"
read yn

if [ $yn == y ]; then
#something
else
    echo "Bye!"
    exit 1
fi
