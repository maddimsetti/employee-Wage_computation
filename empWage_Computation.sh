#!/bin/bash -x

echo "Welcome to Employee Wage Computation Program"

isFullTime=1
isPartTime=2
isAbsent=0
wagePerHr=20
totalSalary==0
workingDaysPerMonth=20

empCheck=$((RANDOM%3))

for (( day=1; day<=$workingDaysPerMonth; day++ ))
do
   case $empCheck in
            $isFullTime)
               echo "Employee is Present"
               empWorkingHours=8
               ;;
            $isPartTime)
               empWorkingHours=8
               ;;
            *)
               echo "Employee is Absent"
               empWorkingHours=0
               ;;
   esac
   dailyWage=$(($empWorkingHours*$wagePerHr))
   totalSalary=$(($totalSalary + $dailyWage))
done

echo $dailyWage
