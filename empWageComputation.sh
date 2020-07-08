#!/bin/bash -x

echo "Welcome to Employee Wage Computation Program"

result=$(( RANDOM % 2 ))  # generating random number 0 or 1

if [[ $result -eq 0 ]] ; then 
	echo "absent"
else 
	echo "present"
fi

#CONSTANTS
WagePerHour=20
FullDayHour=8

#VARIABLE
DailyWage=0

if [[ $result -eq 0 ]] ; then
	echo "dailywage = $DailyWage"
else
	DailyWage=$(($WagePerHour*$FullDayHour))
	echo "dailywage = $DailyWage"
fi
