#!/bin/bash

# string variables

name="shashidhar"

echo "Hello, $name"

# Integer variable

age=42

echo "Age: $age years"

# Arithmetic operations

x=10
y=5

sum=$((x+y))
echo "Sum: $sum"

# concatenation

greeting="Hello"
subject="World"

message="$greeting, $subject...!"

echo "$message"

# string length

string="Shell scripting"

length=${#string}

echo "Length: $length"

# Substring extraction

substring=${string:0:4}

echo "Substring: $substring"

# Using backticks

current_date='date'

echo "Current Date: $current_date"

# Using $(....)

current_time=$(date +%H:%M:%S)
echo "Current Time: $current_time"

# quoting variables

variable="Hello World"

echo "Using double quotes: $variable"
echo 'Using single quotes: $variable'
echo Using no quotes: $variable
echo "Using multiple quotes: '$variable'"

# Escapting characters

special_character="\$"
echo "Special character variable: $special_character"

