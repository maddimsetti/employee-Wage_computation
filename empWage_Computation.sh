#!/bin/bash -x

echo "Welcome to Employee Wage Computation Program"

isFullTime=1
isPartTime=2
isAbsent=0
wagePerHr=20
empHrs_inMonth=100
workingDaysPerMonth=20

totalEmpHrs=0
totalWorkingDays=0

while [[ $totalEmpHrs -lt $empHrs_inMonth && $totalWorkingDays -lt $workingDaysPerMonth ]]
do
   ((totalWorkingDays++))
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
   totalEmpHrs=$(($totalEmpHrs+$empWorkingHours))

done

totalSalary=$(($totalEmpHrs*$workingDaysPerMonth))
echo $totalSalary
echo $dailyWage

