#!/bin/bash
#Assignment Number: Lab 09
#Student Number and Name: 040972996 - Shivaniben Doshi
#Lab Section: CST 8102 310
#Name of script file: mycalc.sh
#The date: 2020-07-30
#Description of script: This script file will  perform basic calculations.


#function add created
add ()
{
	#declare sum variable and assigne total value of $1 and $2
        ((sum=$1+$2))
        echo " The sum of $1 plus $2 equals $sum "
}

#function subtract created
subtract ()
{
	#declare sub variable and assign difference value of $1 and $2
       ((sub=$1-$2))
       echo "The difference of $1 minus $2 equals $sub"

}

# conditions to check 3 or 0 parameter passed or not
# checks 2nd parameter is +/- or not , if not display message.

#checking 3 parameters are passed and 2nd parameter is + , if so then add  and exit.
if [ $# = 3 ] && [ $2 = "+" ];
        then
        add $1 $3
        exit

#checking 3 parameters are passed and 2nd parameter is - , if so then subtract  and exit.
elif [ $# = 3 ] && [ $2 = "-" ];
        then
        subtract $1 $3
	exit

#checking number of parameters are 3 or 0, if not then display  message
elif [ $# != 3 ] && [ $# != 0 ];
        then
        echo No parameters or three parameters need to be entered.
        exit
fi


#where condition is true will do following.
while [ true ]

#display the menu option until select x	
do
        clear
        echo "Exit or Do calculation!"
        echo "Menu1"
        echo "C) Calculation."
        echo "X) Exit."
  
	# menu1 will hold value entered 
	read menu1


while [ $menu1 != "C" ] && [ $menu1 != "c" ] && [ $menu1 != "X" ] && [ $menu1 != "x" ]
        do
                echo " Please select valid option."
                read menu1
	done


	#checking whether user has selected x or not , if select x program will exit
        if [ $menu1 == "x" ] || [ $menu1 == "X" ]
        then
                exit

        #if value entered is c it will propmpt user to enter integer		
        elif [ $menu1  == "c" ] ||  [ $menu1 == "C" ]
        then
                clear
	    #propmpt user to enter integer and hold the value in menu2
            read  -p "Please enter an integer number or X to exit. " menu2

	    #checking whether user has entered x or not, if entered x , program will exit
            if [ $menu2 == "x" ] || [ $menu2 == "X" ]
            then
                    exit

            #display menu2 options and hold entered value in variable menu3
            else
                    clear
                    echo "Menu2"
                    echo "+) Add"
                    echo "-) Subtract"
                    echo "X) Exit"
                    read menu3
                   
		   #checks if user select any other value then the menuu2, it display message and prompt user to enter correct value  again
                   while [ $menu3 != "x" ] && [ $menu3 != "X" ] && [ $menu3 != "-" ] && [ $menu3 != "+" ]
                   do
                    
                   echo " Please enter valid option"
		   read menu3
	           done
                    
		   #checks menu3 value , if + , propmpt user to enter 2nd integer
                    if [ $menu3 == "+" ]
                    then
                            clear

			    #Entered integer will be hold by menu2a, if menu2a is x then program exit, else
			    #it will call add fundction to add two integers
                            read -p "Please enter an integer number or X to exit. " menu2a
                            if [ $menu2a == "x" ] || [ $menu2a == "X" ]
                            then
                                    exit
                            else
                                    add $menu2 $menu2a
                            fi
	            #checks menu3 value , if - , propmpt user to enter 2nd integer
                    elif [ $menu3 == "-" ]
                    then
                            clear
			    #Entered integer will be hold by menu2a, if menu2a is x then program exit, else
                            #it will call subtract fundction to subtracr two integers
                            read -p "Please enter an integer number or X to exit. " menu2a

			    if [ $menu2a == "x" ] || [ $menu2a == "X" ]
                            then
                                    exit
                            else
                                    subtract  $menu2 $menu2a
                            fi
	            #if user entered x or X program will exist
                    elif [ $menu3 == "x" ] || [ $menu3 == "X" ]
                    then
                         exit
		 else
			 echo "Please enter valid option".
                    fi
	    

            fi

        fi

sleep 3
done

