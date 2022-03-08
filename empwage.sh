#!/bin/bash -x 
ispresent=1;

randomecheck=$((RANDOME%2));
if  [$ispresent -eq $randomecheck ];
then 
  echo " employe is present";
else
  echo "absent";
fi
