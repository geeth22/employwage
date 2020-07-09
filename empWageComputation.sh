#usecase 6

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

while [[ $TotalWorkHours -lt $TotalWorkingHoursPerMonth && $TotalWorkingDays -lt $WorkingDaysPerMonth ]]
do
	((TotalWorkingDays++)
	res=$(( RANDOM % 3 ))  # generating random number 0,1,2
	case $res in
		1)WorkHours=4 ;;
		2)WorkHours=8 ;;
		*)WorkHours=0 ;;
	esac
	echo $WorkHours
	TotalWorkHours=$(($TotalWorkHours+$WorkHours))
done

TotalMonthWage=$(($TotalWorkHours*$WagePerHour))
