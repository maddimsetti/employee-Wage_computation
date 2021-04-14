#!/bin/bash -x

echo "Welcome to Employee Wage Computation Program"

isFullTime=1
isPartTime=2
isAbsent=0
wagePerHr=20

#UC4
empCheck=$((RANDOM%3))
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

echo $dailyWage
