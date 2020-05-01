#! /bin/bash
# The return command causes a function to exit with the return value specified by N

function hello () {
echo "Hello World"
return 10
}
hello
echo $?

