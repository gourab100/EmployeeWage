WAGE_PER_HOUR=20
FULL_DAY_WORKING_HRS=8
HALF_DAY_WORKING_HRS=4

dailyWage=0
MAX_WORKING_DAYS=20
for(( i=0;i<MAX_WORKING_DAYS;i++))
do
	attendance=$((RANDOM%3))
		case $attendance in
			0)
				echo "Employee is absent"
				echo "Daily wage is 0"
				;;
			1)
				echo "Employee is present"
				dailyWage=$(($WAGE_PER_HOUR * $HALF_DAY_WORKING_HRS))
				echo "Daily wage for part time: $dailyWage"
				;;
			2)
				echo "EMployee is present"
				dailyWage=$(($WAGE_PER_HOUR * $FULL_DAY_WORKING_HRS))
				echo "Daily wage for full time: $dailyWage"
				;;
		esac
done
