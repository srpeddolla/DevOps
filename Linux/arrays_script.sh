#!/bin/bash

# Author: Shashidhar
# Date: 20/Aug/2024
# Declaring and Using Arrays: Declare an array by assigning values to consecutive indices. Arrays in shell scripts are 0-indexed.

# Declare an array with values

fruits=("Apple" "Banana" "Orange")

# Access array elements

echo "First fruit: ${fruits[0]}"
echo "Second fruit: ${fruits[1]}"
echo "Third fruit: ${fruits[2]}"