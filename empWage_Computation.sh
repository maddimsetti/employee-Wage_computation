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
  local $empCheck=$1
  case $empCheck in
            $isFullTime)
               empWorkingHours=8
               ;;
            $isPartTime)
               empWorkingHours=8
               ;;
            *)
               empWorkingHours=0
               ;;
   esac
   echo $empWorkingHours
}

function getEmpWage() {
    local empHr=$1
    echo $(($empHr*$wagePerHr))
}

while [[ $totalEmpHrs -lt $empHrs_inMonth && $totalWorkingDays -lt $workingDaysPerMonth ]]
do
   ((totalWorkingDays++))
   empCheck=$((RANDOM%3))
   empWorkingHours="$( getWorkingHours $empCheck )"
   totalEmpHrs=$(( $totalEmpHrs+$empWorkingHours ))
   dailyWage[$totalWorkingDays]="$( getEmpWage $empWorkingHours )"
done

totalSalary=$(($totalEmpHrs*$workingDaysPerMonth))

echo ${dailyWage[@]}
