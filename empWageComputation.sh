#usecase3

#!/bin/bash -x

#CONSTANTS
WagePerHour=20
FullDayHour=8
PartTimeHour=4

#VARIABLE
DailyWage=0

if [[ $res -eq 2 ]] ; then
	DailyWage=$(($WagePerHour*$FullDayHour))
	echo "dailywage = $DailyWage"
elif [[ $res -eq 1 ]] ; then
	DailyWage=$(($WagePerHour*$PartTimeHour))
	echo "dailywage = $DailyWage"
else
	echo " dailywage = $DailyWage"
fi
