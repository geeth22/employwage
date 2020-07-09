#usecase 7

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

function GetWorkHours()
{
case $1 in
	1)WorkHours=4 ;;
	2)WorkHours=8 ;;
	*)WorkHours=0 ;;
esac
echo $WorkHours
}

while [[ $TotalWorkHours -lt $TotalWorkingHoursPerMonth && $TotalWorkingDays -lt $WorkingDaysPerMonth ]]
do
	((TotalWorkingDays++)
	WorkHours="$(GetWorkHours $(( RANDOM % 3 )) )"
	TotalWorkHours=$(($TotalWorkHours+$WorkHours))
done
	TotalDailyWage=$(($TotalWorkHours*$WagePerHour))
