#!/bin/bash

# Author: Shashidhar
# Date: 20/Aug/2024

# Loop through array using for loop and index

fruits=("Apple" "Banana" "Orange")

echo "using for loop:"

for fruit in "${fruits[@]}"; do
    echo "Fruit: $fruit"
done

# Loop through array using while loop and index

fruits=("Apple" "Banana" "Orange")

echo "using while loop:"
index=0

while [ $index -lt ${#fruits[@]} ]; do
    echo "Fruit at index $index: ${fruits[$index]}"
    index=$((index + 1))
done