echo " welcome to  employeewage"
WAGE_PER_HOUR=20
FULL_DAY_HOURS=8
absent=0

attendance=$((RANDOM%3))
if [[ $attendance -eq $absent ]]
then
	echo "Employee is absent"
	dailyWage=0
else
	echo "Employee is present"
	dailyWage=$(($WAGE_PER_HOUR * $FULL_DAY_HOURS))
	echo "Daily wage for full time: $dailyWage"
fi
