#!/bin/bash -x

echo "Welcome to Employee Wage Computation Program:"
fullTime=1
partTime=2
RatePerHr=20
WorkingDaysPerMonth=20
for((i=0; i<$WorkingDaysPerMonth; i++))
do
	Attendance=$(( RANDOM%3 ))
	case $Attendance in
		$fullTime)
			echo "Employee is working Full Time"
			WorkingHr=8
			;;
		$partTime)
			echo "Employee is working Part Time"
			WorkingHr=4
			;;
		*)
			echo "Employee is Absent"
			WorkingHr=0
			;;
	esac
	Hour=$(($Hour+$WorkingHr))
	Salary=$(( $WorkingHr*$RatePerHr ))
	TotalSalary=$(($TotalSalary+$Salary))
	if [ $Hour -ge 100 ]
	then
		echo "LIMIT REACHED: Worked for 100 Hours"
		break
	fi
done


echo "Salary per month is : $TotalSalary"
