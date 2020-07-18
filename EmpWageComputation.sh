#!/bin/bash
function Attendance()
{
	fullTime=1
	partTime=2
	Attend=$(( RANDOM%3 ))
	case $Attend in
      $fullTime)
         Hr=8
         ;;
      $partTime)
         Hr=4
         ;;
      *)
         Hr=0
         ;;
   esac
	echo $Hr

}

declare -A DictDailyWage

echo "Welcome to Employee Wage Computation Program:"
RatePerHr=20
WorkDays=20

for((i=1; i<=$WorkDays; i++))
do
	WorkingHr=$( Attendance )
	Hour=$(($Hour+$WorkingHr))
	Salary=$(( $WorkingHr*$RatePerHr ))
	DictDailyWage[Day$i]=$Salary
	TotalSalary=$(($TotalSalary+$Salary))
	if [ $Hour -ge 100 ]
	then
		echo "LIMIT REACHED: Worked for 100 Hours"
		break
	fi
done

for key in ${!DictDailyWage[@]}
do
	echo " $key : ${DictDailyWage[$key]}"
done

echo "Salary per month is : $TotalSalary"
