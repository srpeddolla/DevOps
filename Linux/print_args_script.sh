#!/bin/bash

greet() {
	echo "Hello, how are you?"
}

# Call the greet function

greet

#print args function

print_args() {
	echo "First argument: $1"
	echo "Second argument: $2"
}

# call the print_args function with arguments

print_args "Hello" "World"