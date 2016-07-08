clear

echo "Login  To Student Management System  >>>>>>>  "
echo "-------------------------------------------------------"

read -p "Username : "  uname
echo ""
read -p "Password : "  pass

value=$(<user.config)

	if [ $uname == $value -a $pass == "123" ] 
	then
		./Menu.sh
	else
		exit
	fi



