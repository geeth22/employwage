#usecase 4

#!/bin/bash -x

#CONSTANTS
WagePerHour=20
FullDayHour=8
PartTimeHour=4

res=$(( RANDOM % 3 ))  # generating random number 0,1,2

case $res in
	1)WorkHours=4 ;;
	2)WorkHour=8 ;;
	*)WorkHour=0 ;;
esac

DailyWage=$(($WagePerHour*$WorkHour))
