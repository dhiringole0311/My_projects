#!/bin/bash


<< README

Author : Dhirajkumar Ingole
usage : ./user_management.sh
created on : 29-07-2024

README

function user_create {
			echo "Please Enter the usaer name you want to create"
			read user_name
			#echo "Please Enter password for your user"
			#read password

			sudo useradd $user_name
			sudo passwd $user_name
			if [ $? -eq 0 ] ; then
				echo "User $user_name created successfully"
			else
				echo "Error while creating user"
			fi
}


function delete_user {
			echo "Please enter the user name which you wanted to remove/delete"
			read del_user
		 	
			sudo userdel -f $del_user
			if [ $? -eq 0 ] ; then 
				echo "User $del_user has been removed successfully"
			else
				echo "Error while deleting user"
			fi
}


echo "Welcome to the User Management system of DK"
echo "If you want create user Press 'c' OR Press 'd' to remove/delete user"

read input

case "$input" in 
	c)
	user_create
	;;
	d)
	delete_user
	;;
	*)
	echo -e "Invalid Option!!!\nPlease press 'c' to create user OR press 'd' to remove/delete user."
esac


