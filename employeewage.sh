echo " welcome to  employeewage"
absent=0
attendance=$((RANDOM%2))
if [[ $attendance -eq $absent ]]
then
	echo "Employee is absent"
else
	echo "Employee is present"
fi
