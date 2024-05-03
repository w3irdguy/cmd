actualdir=$(pwd)
r="\033[91m"
g="\033[92m"
y="\033[93m"
db="\033[94m"
v="\033[95m"
b="\033[96m"
PS1="C:/$actualdir> "

del(){
	if [ $1 -z ]
	then
		echo "Please put archive name"
	elif [ $1 == "/?" ]
	then
		echo -e "del >usage< \n del [FILE]"
	else
		rm $1
	fi
}
rd(){
        if [ $1 -z ]
        then
                echo "Please put archive name"
        elif [ $1 == "/?" ]
        then
                echo -e "rd >usage< \n rd [DIRECTORY]"
        else
                rm -rf $1
        fi

}
md(){
        if [ $1 -z ]
        then
                echo "Please put archive name"
        elif [ $1 == "/?" ]
        then
                echo -e "md >usage< \n md [DIRECTORY NAME]"
        else
                mkdir $1
        fi
}
help(){
	echo """
	/? - Show the help of specific command
	quit(custom command) - Exit from console
	rd - Remove directory
	md - Create directory
	del - Delete anyone file
	cls - Clear the console
	pause - Pause the console
	color - Set terminal color
	doskey - Set alias
	copy - Copy files
	move - Move files
	dir - Shows the current directory
	date - Displays actual date
	cd - Move inside the directorys
	echo - Displays some text in current screen
	"""
}
cls(){
	clear
}
pause(){
	echo -n "Press enter to continue..." 
	read ask
}
color(){
	case $1 in
		0)
			PS1=$(echo -e "\033[2;49;90m C:/$actualdir> ")
		;;
		1)
			PS1=$(echo -e "\033[94m C:/$actualdir> ")
		;;
		2)
			PS1=$(echo -e "\033[32m C:/$actualdir> ")
		;;
		3)
			PS1=$(echo -e "\033[96m C:/$actualdir> ")
		;;
		4)
			PS1=$(echo -e "\033[31m C:/$actualdir> ")
		;;
		5)
			PS1=$(echo -e "\033[5;49;35m C:/$actualdir> ")
		;;
		6)
			PS1=$(echo -e "\033[33m C:/$actualdir> ")
		;;
		7)
			PS1=$(echo -e "C:/$actualdir> ")
		;;
		8)
			PS1=$(echo -e "\033[2;49;39m C:/$actualdir> ")
		;;
		9)
			PS1=$(echo -e "\033[96m C:/$actualdir> ")
		;;
		um)
			PS1=$(echo -e "\033[92m C:/$actualdir> ")
		;;
		b)
			PS1=$(echo -e "\033[96m C:/$actualdir> ")
		;;
		c)
			PS1=$(echo -e "\033[91m C:/$actualdir> ")
		;;
		d)
			PS1=$(echo -e "\033[95m C:/$actualdir> ")
		;;
		e)
			PS1=$(echo -e "\033[93m C:/$actualdir> ")
		;;
		f)
			PS1="C:/$actualdir> "
		;;
		*)
			echo -e "color >usage< \n color [PARAMETER] \n 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, um, b, c, d, e, f."

		;;
	esac

}
copy(){
        if [ $1 -z -a $2 -z ]
        then
                echo "Please put destinations name"
        elif [ $1 == "/?" ]
        then
                echo -e "copy >usage< \n copy [SOURCE] [DESTINATION]"
        else
                cp $1 $2
        fi

}
doskey(){
        if [ $1 -z -a $2 -z ]
        then
                echo "Please put an alias"
        elif [ $1 == "/?" ]
        then
                echo -e "doskey >usage< \n doskey [ALIAS] [COMMAND OR VARIABLE]"
        else
                alias $1=$($2)
        fi

}
move(){
        if [ $1 -z -a $2 -z ]
        then
                echo "Please put archives name"
        elif [ $1 == "/?" ]
        then
                echo -e "move >usage< \n move [SOURCE] [DESTINATION]"
        else
                mv $1 $2
        fi

}
quit(){
	echo "Please close this windows manually :("
}
dir(){
	ls -la
}
date(){
	date
}
