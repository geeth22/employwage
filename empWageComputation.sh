#!/bin/bash -x

#CONSTANTS
WagePerHour=20
FullDayHour=8
PartTimeHour=4
WorkingDaysPerMonth=20
TotalWorkingHoursPerMonth=100

#VARIABLES
TotalWorkingDays=0
TotalWorkHours=0

declare -A DailyWages

function GetWorkHours()
{
case $1 in
	1)WorkHours=4 ;;
	2)WorkHours=8 ;;
	*)WorkHours=0 ;;
esac
echo $WorkHours
}

function GetEmpWage() 
{
LocalWorkHour=$1
echo $(($WorkHour*$wagePerHour))
}

while [[ $TotalWorkHours -lt $TotalWorkingHoursPerMonth && $TotalWorkingDays -lt $WorkingDaysPerMonth ]]
do
	((TotalWorkingDays++)
	WorkHours="$(GetWorkHours $(( RANDOM % 3 )) )"
	TotalWorkHours=$(($TotalWorkHours+$WorkHours))
	DailyWages["$TotalWorkingDays"]="$( GetEmpWage $WorkHours )"
done
TotalDailyWage=$(($TotalWorkHours*$WagePerHour))
echo ${DailyWages[@]}
echo ${!DailyWages[@]}
