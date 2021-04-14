echo "Welcome to Employee Wage Computation Program"

#!/bin/bash 

isPresent=1
isPartTime=2
isAbsent=0
wagePerHr=20
fullDayHours=8
partTimeHours=8

randomNumber=$((RANDOM%3))
if [ $randomNumber -eq $isPresent ]
then 
    echo "Employee is Present"
    dailyEmployeeWage=$(($fullDayHours*$wagePerHr))
elif [ $randomNumber -eq $isPartTime ]
then
    dailyEmployeeWage=$(($partTimeHours*$wagePerHr))
else
    echo "Employee is Absent"
    dailyEmployeeWage=0
fi

echo $dailyEmployeeWage
