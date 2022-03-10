#!/bin/bash -x 
ispresent=1;
randomCheck=$((RANDOM%2));
if  [$ispresent -eq $randomeCheck ];
then 
  echo " employe is present";
else
  echo "absent";
fi
