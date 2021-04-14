echo "Welcome to Employee Wage Computation Program"

#!/bin/bash 

isPresent=1
isAbsent=0
wagePerHr=20
fullDayHours=8

randomNumber=$((RANDOM%2))
if [ $randomNumber -eq $isPresent ]
then 
    echo "Employee is Present"
    dailyEmployeeWage=$(($fullDayHours*$wagePerHr))
else
    echo "Employee is Absent"
    dailyEmployeeWage=0
fi

echo $dailyEmployeeWage
