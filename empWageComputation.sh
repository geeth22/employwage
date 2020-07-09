#usecase 2

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
