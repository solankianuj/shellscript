#!/bin/bash -x

isPartTime=1;
isFullTime=2;
empRatePerHr=20;
maxWorkingdays=20;
maxworkinghrs=100;
totalsalary=0;
totalworkingdays=1;
totalworkinghrs=0;

while [[ $totalworkingdays -le $maxWorkingdays && $totalworkinghrs -lt $maxworkinghrs ]];
do
	empCheck=$((RANDOM%3))
	case $empCheck in
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
	totalworkinghrs=$(($totalworkinghrs+$empHrs));
	((totalworkingdays++))
done
	totalsalary=$(($totalworkinghrs*$empRatePerHr));

echo "employee total salary for month:"$totalsalary;
