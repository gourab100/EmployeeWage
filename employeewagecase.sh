WAGE_PER_HOUR=20
FULL_DAY_WORKING_HRS=8
HALF_DAY_WORKING_HRS=4

dailyWage=0

attendance=$((RANDOM%3))
echo "random number : $attendance"
		case $attendance in
			0)
				echo "Employee is absent"
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
