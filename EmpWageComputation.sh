#!/bin/bash -x

echo "Welcome to Employee Wage Computation Program:"
fullTime=1
partTime=2
RatePerHr=20
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

Salary=$(( $WorkingHr*$RatePerHr ))

echo "Salary per day is : $Salary"
