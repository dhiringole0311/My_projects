#!/bin/bash

<< Info
Author : Dhirajkumar Ingole
Usage : ./Directories.sh name_of_dir start_number end_number
created on : 23-07-2024
Info

for (( i=$2; i <= $3 ;i++ ))
do
	mkdir $1$i
done
echo "Directories created successfully"
