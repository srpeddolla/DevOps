#!/bin/bash

# Author: Shashidhar
# Search and Replace: searching involves finding a specific substring within a string and replacing involves substituting one substring with another.

string="Hello, World!, Hello!"
search="Hello!"
replace="Hi"
result=${string//$search/$replace} # Replace all occurences

echo "Original string: $string"
echo "Result after replacement: $result"