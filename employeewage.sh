echo " welcome to  employeewage"
WAGE_PER_HOUR=20
FULL_DAY_HOURS=8
HALF_DAY_HOURS=4
absent=0
partTime=2
fullTime=1

attendance=$((RANDOM%3))
if [[ $attendance -eq $absent ]]
then
	echo "Employee is absent"
	dailyWage=0
elif [[ $attendance -eq $partTime ]]
then
	echo "Employee is parttime"
	dailyWage=$(($WAGE_PER_HOUR * $HALF_DAY_HOURS))
        echo "Daily wage for part time: $dailyWage"

else
	echo "Employee is present"
	dailyWage=$(($WAGE_PER_HOUR * $FULL_DAY_HOURS))
	echo "Daily wage for full time: $dailyWage"
fi
