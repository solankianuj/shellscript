#!/bin/bash -x

isPartTime=1;
isFullTime=2;
empRatePerHr=20;
maxWorkingdays=20;
maxworkinghrs=100;
totalsalary=0;
totalworkingdays=1;
totalworkinghrs=0;

function getEmpHrs( ) {
    case $1 in
	$isFullTime)
		empHrs=8
		;;
	$isPartTime)
		empHrs=4
		;;
	 *)
	empHrs=0
		;;
esac
echo $empHrs
}
while [[ $totalworkingdays -le $maxWorkingdays && $totalworkinghrs -lt $maxworkinghrs ]];
do
	empCheck=$((RANDOM%3))
	empHrs="$( getEmpHrs $empCheck )"
	totalworkinghrs=$(($totalworkinghrs+$empHrs));
	((totalworkingdays++))
done
	totalsalary=$(($totalworkinghrs*$empRatePerHr));

echo "employee total salary for month:"$totalsalary;
