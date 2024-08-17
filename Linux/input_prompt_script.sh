#!/bin/bash

# Input with prompting

read -p "Enter your favourite color: " color

echo "Your favourite color is $color"

# Read password without echoing characters

read -s -p "Enter your password: " password
echo "Password entered."

# Read input with timeout

read -t 5 -p "Enter something in 5 seconds: " timed_input

echo "You entered: $timed_input"