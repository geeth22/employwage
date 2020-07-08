Welcome to Employee Wage Computation Program

#usecase 1
result=$(( RANDOM % 2 ))  # generating random number 0 or 1

if [[ $result -eq 0 ]] ; then 
	echo "absent"
else 
	echo "present"
fi

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

#usecase3

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

#usecase4

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

#usecase5

#CONSTANTS
WagePerHour=20
FullDayHour=8
PartTimeHour=4
WorkingDaysPerMonth=20

res=$(( RANDOM % 3 ))  # generating random number 0,1,2

case $res in
	1)WorkHours=4 ;;
	2)WorkHour=8 ;;
	*)WorkHour=0 ;;
esac

DailyWage=$(($WagePerHour*$WorkHour))
TotalMonthWage=$(($WorkingDaysPerMonth*$DailyWage))

#usecase6

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

#usecase7

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

#usecase8

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
	DailyWages[$TotalWorkingDays]="$( GetEmpWage $WorkHours )"
done
TotalDailyWage=$(($TotalWorkHours*$WagePerHour))
echo ${DailyWages[@]}

#usecase9

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
