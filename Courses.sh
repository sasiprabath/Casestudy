clear

echo "Choose a Options"
echo ""
echo " 1 . Add a Course "
echo ""
echo " 2 . View Courses "
echo ""
echo " 3 . Go Main Menu"
echo ""

echo "Enter option"
read -p ": " opt

case "$opt" in
    "1") clear
 echo "Add Course Menu"
 echo "================="
 echo ""
 
 read -p "Course Name : " name
 read -p "Description : " description
 read -p "Course Fee : " fees
 read -p "Course Duration : " due
 read -p "Lecture : " lec
 
 echo  $name " - " $description " - " $fees" - " $due" - " $lec   >> "courses.txt"
 ./Courses.sh
    ;;
    "2") clear
 echo "Course Menu"
 echo "==================="
 echo ""

 filename="courses.txt"
 while read -r line
 do
  name=$line
  echo "$name"
 done < "$filename"
 echo ""
 echo "==========================================="
 read -p "Hit 1 to go to the main menu " opt
 if [ $opt -eq 1 ] 
 then
  ./Menu.sh
 else
  ./Course.sh
 fi
    ;;
   
    "3") ./Course.sh
    ;;
esac