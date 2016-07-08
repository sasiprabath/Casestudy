clear

echo "Choose a Options"
echo ""
echo " 1 . Add a Student "
echo ""
echo " 2 . View Student "
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
 read -p "Student Name : " sname
 read -p "Birth day : " bod
 read -p "School  : " school
 read -p "Age : " age
 read -p "Contact number : " num
 read -p "Email : " mail
 
 echo $sname " - " $bod " - " $school " - " $age" - " $num" - " $mail   >> "students.txt"
 ./Student.sh
    ;;
    "2") clear
 echo "Student Menu"
 echo "==================="
 echo ""

 filename="students.txt"
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
  ./Student.sh
 fi
    ;;
   
    "3") ./Student.sh
    ;;
esac