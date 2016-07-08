#!/bin/bash


clear
echo "===============   MAIN MENU   ================== "

echo ""
echo "Hello $USER"
echo ""
echo "--------------------------"
echo "Menu Options"
echo ""
echo "--------------------------"
echo "Choose a Option"
echo ""
echo " 1. Student"
echo ""
echo " 2. Course"
echo ""
echo " 99. Exit"
echo ""
read -p "Select the option : " option

if [ $option -eq 1 ] 
then
	./Student.sh
elif [ $option -eq 2 ]
then
	./Courses.sh
elif [ $option -eq 99 ]
then
	exit
else
	./Menu.sh
fi
