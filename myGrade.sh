#!/bin/bash
#Student Name: Shivaniben Doshi
#Student Number: 040972996
#Course: CST8102
#Lab Section : CST8102 310
#Description of Script: This script will calculate the final grade, and display the letter grade for a course,


read -p "Enter Assignment Mark(0-40):" assignment
read -p "Enter Test 1 Mark(0-15):" test1
read -p "Enter Test 2 Mark(0-15):" test2
read -p "Enter Final Exam Mark(0-30):" final

((total=assignment+test1+test2+final))


if [ $total -lt 50 ]
then	
	lg=" F"

elif [ $total -lt 53 ] 
then
	lg="D-"

elif [ $total -lt 57 ]
then 
	lg="D"

elif [ $total -lt 60 ]
then 
	lg="D+"
elif [ $total -lt 63 ]
then 
	 lg="C-"

elif [ $total -lt 67 ]
then 
	lg="C"
elif [ $total -lt 70 ]
then 
	lg="C+"

elif [ $total -lt 73 ]
then 
        lg="B-"
elif [ $total -lt 77 ]
then 
	lg="B"
	
elif [ $total -lt 80 ]
then 
	lg="B+"

elif [ $total -lt 85 ]
then
	lg="A-"
elif [ $total -lt 90 ]
then 
	lg="A"

else
	lg="A+"
fi

echo " "
echo "Your final numeric grade is $total , and your final letter grade is $lg ."


