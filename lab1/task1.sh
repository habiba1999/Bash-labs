#! /bin/bash
## task1 
# How to perform float point operation

#parameters
## numb1 is 1st parameter
## numb2 is 2nd parameter

## Exit codes
# 0:success
# 1:Not Enough Parameters
# 2: Division by Zero


# first we have to check for parameters 

[ ${#} -ne 2 ] && echo "Not Enough Parameters" && exit 1

numb1=${1}
numb2=${2}
 
echo "your inputs ${numb1} , ${numb2}"

#sum of two float numbers
echo "Sum of two numbers = " $(echo $numb1 + $numb2 | bc)

# Subtract of two float numbers
echo "Subtract of two numbers = " $(echo $numb1 - $numb2 | bc)

#Multiply of two numbers
echo "Multiply of two numbers = " $(echo $numb1 \* $numb2 | bc)

# check for divide by Zero
[ $(echo "${numb2} == 0" | bc) -eq 1 ] && echo "Divide by Zero can't complete Operation" && exit 2
#divide of two float numbers
echo "Divide of two numbers = " $(echo $numb1 / $numb2 | bc)
