#!/bin/bash -x

isPartTime=1;
isFullTime=2;
empRatePerHr=20;
maxWorkingdays=20;
totalsalary=0;

for (( days=1;days<=$maxWorkingdays;days++ ))
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
	salary=$(($empHrs*$empRatePerHr));
	totalsalary=$(($totalsalary+$salary));
done
echo "total salary of employe; "$totalsalary;
