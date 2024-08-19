#!/bin/bash

# Author: Shashidhar
# Date: 20/Aug/2024

# We can use loops to iterate through array elements.

fruits=("Apple" "Banana" "Orange")

# Loop through array using for loop

echo "Using for loop:"

for fruit in "${fruits[0]}"; do
    echo "Fruit: $fruit"
done