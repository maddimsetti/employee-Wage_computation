echo "Welcome to Employee Wage Computation Program"

#!/bin/bash 

isPresent=1
isAbsent=0

randomNumber=$((RANDOM%2))
if [ $randomNumber -eq $isPresent ]
then 
    echo "Employee is Present"
else
    echo "Employee is Absent"
fi
