#!/bin/bash -x

echo "Welcome to Employee Wage Computation Program on Master Branch:"
fullTime=1
partTime=2
RatePerHr=20
Attendance=$(( RANDOM%3 ))
if [ $Attendance -eq $fullTime ]
then
	echo "Employee is working Full Time"
	WorkingHr=8
elif [ $Attendance -eq $partTime ]
then
	echo "Employee is working Part Time"
	WorkingHr=4
else
   echo "Employee is Absent"
	WorkingHr=0
fi

Salary=$(( $WorkingHr*$RatePerHr ))

echo "Salary per day is : $Salary"
