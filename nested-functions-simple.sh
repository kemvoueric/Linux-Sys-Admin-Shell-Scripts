#! /bin/bash
# Desc: nested function: the second function is nested in the 1st function
# calling the 2nd function thats defined in the 1st function too

number_one () {
echo "this is my first function"
number_two    
}
number_two () {
echo "this is my second function"
}

## calling function
number_one



