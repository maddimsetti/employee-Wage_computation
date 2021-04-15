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

function getWorkingHours() {
  case $1 in
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
   echo $empWorkingHours
}

while [[ $totalEmpHrs -lt $empHrs_inMonth && $totalWorkingDays -lt $workingDaysPerMonth ]]
do
   ((totalWorkingDays++))
   empWorkingHours="$( getWorkingHours $((RANDOM%3)) )"
   totalEmpHrs=$(( $totalEmpHrs+$empWorkingHours ))
done

totalSalary=$(($totalEmpHrs*$workingDaysPerMonth))


