#!/bin/bash -x 
ispresent=1;
emprateperhr=20;

randomecheck=$((RANDOME%2));
if  [$ispresent -eq $randomecheck ];
then 
    emphrs=8;

	  salary=$(($emphrs*$emprateperhr));
else
   salary=0;
fi
