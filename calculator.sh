#!/bin/bash

# The purpose of this script is to create a basic calc.

# if cmdline arguments are less than three echo error
if [ $# -lt 3 ]; then
	echo "Usage - ./calculator.sh value1 operator value2"
	echo "where,
value1: numeric value
value2: numeric value
operator: one of +, -, /, x"
exit
fi

# select which binary operation is it, and perfom the task
if  [ "$2" = "+" ]; then 
	echo `expr $1 + $3` 
elif  [ "$2" = "-" ]; then 
	echo `expr $1 - $3` 
elif [ "$2" = "/" ]; then 
	if [  $3 -eq 0 ]; then
		echo "Division-by-zero Error!"
	else
		echo `expr $1 / $3` 
	fi
elif [ "$2" = "x" ]; then 
	echo `expr $1 \* $3`
else
	echo "Usage - ./calculator.sh value1 operator value2" 
  echo "where,
value1: numeric value
value2: numeric value
operator: one of +, -, /, x"
fi
