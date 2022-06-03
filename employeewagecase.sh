WAGE_PER_HOUR=20
FULL_DAY_WORKING_HRS=8
HALF_DAY_WORKING_HRS=4
MAX_WORKING_DAYS=20
MAX_WORKING_HRS=100

dailyWage=0
days=0
total_working_hrs=0

while [[ $total_working_hrs -le $MAX_WORKING_HRS && $days -le $MAX_WORKING_DAYS ]]
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
				total_working_hrs=$(($total_working_hrs + $HALF_DAY_WORKING_HRS))
				echo "Daily wage for part time: $dailyWage"
				;;
			2)
				echo "EMployee is present"
				dailyWage=$(($WAGE_PER_HOUR * $FULL_DAY_WORKING_HRS))
				total_working_hrs=$(($total_working_hrs + $FULL_DAY_WORKING_HRS))
				echo "Daily wage for full time: $dailyWage"
				;;
		esac
		days=$(($days+1))
	done
echo "Total working hours: $total_working_hrs"
