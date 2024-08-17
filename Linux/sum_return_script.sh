#!/bin/bash

calculate_sum() {
	local num1="$1"
	local num2="$2"
	local sum=$((num1 + num2))
	echo "$sum"
	return $sum
}

# call the calculate_sum function and capture the output

result=$(calculate_sum 10 20)
echo "Sum: $result"