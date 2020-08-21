#!/bin/bash
#Assignment number: Lab 08
#Student Name and Number: 040972996 - Shivaniben Doshi
#Course and Section: CST 8201 310
#Submitted date: 2020-07-30
#Description of the script: This script will manage user and group management.

choice=n

while [ $choice != "q" ] && [ $choice != "Q" ]
do
	clear
	#creating menu options for user
	echo "Choose one of the following options:"
	echo "A to Create a user account"
	echo "B to Delete a user account"
	echo "C to Change supplementary group for a user account"
	echo "D to Change initial group for a user account"
	echo "E to Change default login shell for a user account"
	echo "F to Change account expiration date for a user account"
	echo "Q to Quit"
	

	#prompt user for choice input
	read -p "What would you like to do?:  "  choice

         

	if [ $choice == "A" ] || [ $choice ==  "a" ]
       	then
		#prompt user to enter username
		read -p "Username: " username
		#prompt user to enter home directory path
		read -p "User's home directory(using absolute path): " homeDirectory
	        #propmpt user to enter it's default login shell	
		read -p "Enter login shell(using absolute path): " loginShell
		#creating username by -m
		#creating homeDirectory by -d
		#creating login shell by -s
		sudo useradd -d $homeDirectory -s $loginShell -m $username


	elif [ $choice ==  "B" ] || [ $choice == "b" ]
       	then
		
		
		#prompt user to enter username to be deleted
		read -p "Username(account to be deleted): " username
		#delete username alongwith user home directory by -r
		sudo userdel -r $username 

	elif [ $choice == "C" ] || [ $choice == "c" ]
       	then
	
		#prompt user to enter username and group name to change supplementary group
		read -p "Username: " username
		read -p "Supplimentary group name: " groupname
		#changing supplimentary group by -G
		sudo groupadd $groupname
		sudo usermod -G $groupname $username
		 
	elif [ $choice ==  "D" ] || [ $choice == "d" ]
       	then
		
		#prompt user to enter username and group name to change initial  group
		read -p "Username: " username
		read -p "Initial group name: " initialgroupname
		#changing supplimentary group by -g
		sudo usermod -g $initialgroupname $username

	elif [ $choice == "E" ] || [ $choice == "e" ]
       	then
		
		#prompt user to enter username and shell name 
		read -p "Username: " username
		read -p "Enter login shell: " loginshell
		#changing default shell by -s
		sudo chsh -s $loginshell $username

	elif [ $choice == "F" ] || [  $choice == "f" ]
       	then
	
		#Prompt user to enter username and new expiration date  to change account expiration date 
		read -p "Username: " username
		read -p "Expiration date( using YYYY-MM-DD): " expirationDate
		#changing expiration date by -e
		sudo chage -E  $expirationDate $username

	elif [ $choice ==  "q" ] || [ $choice ==  "Q" ]
       	then
		echo "You chooes to  quit"
		exit

	else
		echo "Please enter a valid option!"



	fi


sleep 3
done
