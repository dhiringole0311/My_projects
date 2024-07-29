#!/bin/bash


<< README

Author : Dhirajkumar Ingole
Usage : ./backup.sh
created on 29-07-2024

README

path=$1
dt=$(date '+%Y%m%d%H%M%S')
bkp_path=$1/archived

cp $path/app_service.log $bkp_path/app_service_$dt.log

gzip $bkp_path/app_service_$dt.log

if [ $? -eq 0 ] 
then
	echo "Backup created successfully"
else
	echo "Backup was not performed for $dt"
fi


