#!/bin/bash -x

echo "Welcome to Employee Wage Computation Program on Master Branch:"

RatePerHr=20
Attendance=$(( RANDOM%2 ))
if [ $Attendance -eq 1 ]
then
   echo "Employee is Present"
	WorkingHr=8
else
   echo "Employee is Absent"
	WorkingHr=0
fi

Salary=$(( $WorkingHr*$RatePerHr ))

echo "Salary per day is : $Salary"
