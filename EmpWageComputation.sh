#!/bin/bash -x
function Attendance()
{
	fullTime=1
	partTime=2
	Attend=$(( RANDOM%3 ))
	case $Attend in
      $fullTime)
         echo "Employee is working Full Time"
         Hr=8
         ;;
      $partTime)
         echo "Employee is working Part Time"
         Hr=4
         ;;
      *)
         echo "Employee is Absent"
         Hr=0
         ;;
   esac

}

echo "Welcome to Employee Wage Computation Program:"
RatePerHr=20
WorkingDaysPerMonth=20
for((i=0; i<$WorkingDaysPerMonth; i++))
do
	Attendance
	WorkingHr=$Hr
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
