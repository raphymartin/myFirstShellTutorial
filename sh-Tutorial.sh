#!/bin/bash
# Author : Raphael Martin

TUTFOL=$(pwd)"/tmp"
TUTBEGFIL="rama"

chmod -R +x ./chapters

# check if folder already exists
if [ ! -d $TUTFOL ]
    then
		mkdir $TUTFOL
	fi


echo "
########################################################################
### Welcome to my first Tutorial -- Shell-scripting for beginners    ###
########################################################################
"

# if name size == 0
if [ ${#USER} == 0 ]
then
	read -pn "What's your name? " USER
	if [ ${#USER} == 0 ]
	then
		USER="stranger"
	fi
fi
clear

# simple date & formated date example 
echo -n "########################################################################
### $USERNAME, I wish you a nice $(date)
### or formated " 
date +"%A, %B %-d, %Y"

until [ "$selection" = "0" ]; 
do
	echo "########################################################################"
	echo "###"
	echo "### Select a chapter"
	echo "###"
	echo "### 1 - Chapter 1 - fundamentals"
	echo "### 2 - Chapter 2 - if, case & loops"
	echo "### 3 - Chapter 3 - funktion"
    echo "### 4 - Chapter 4 - give a script variable"
    echo "### 5 - Chapter 5 - script makes script"
    echo "### 6 - Chapter 6 - gnome gui elements"
    echo "### 7 - Chapter 7 - use tools like protokols in scripts"
    echo "### 8 - Chapter 8 - find and execute"
	echo "###"
	echo "### 0 - Exit tutorial"
	echo "###"
	echo -n "Enter selection: "

	read selection
    case $selection in
        1 ) ./chapters/chap1/chap1.sh $TUTFOL $TUTBEGFIL $name ;;
        2 ) ./chapters/chap2/chap2.sh $TUTFOL $TUTBEGFIL $name ;;
        3 ) ./chapters/chap1/chap3.sh $TUTFOL $TUTBEGFIL $name ;;
        4 ) ./chapters/chap2/chap4.sh $TUTFOL $TUTBEGFIL $name ;;
        5 ) ./chapters/chap1/chap5.sh $TUTFOL $TUTBEGFIL $name ;;
        0 ) echo "
			Bye $USER"
			exit
			;;
        * ) echo "Please enter 1, 2, 3, 4, 5 or 0"
    esac
done



echo "########################################################################
### build a other scripts with parameter input
########################################################################

"
echo -en "#!/bin/bash
# willkommen
if [ \044" > ~/welcome.sh
echo -n 1 >> ~/welcome.sh
echo -en " == \042rama\042 ]
then
	echo \042hi, Raphael!\042
else
    echo \042Hi, \044" >> ~/welcome.sh
echo -n 1 >> ~/welcome.sh
echo -e "\042
fi" >> ~/welcome.sh


chmod 777 ~/welcome.sh
cat ~/welcome.sh

~/welcome.sh rama
~/welcome.sh franz


echo "
########################################################################
### define funktions, call functions and unset function
########################################################################

"
Hello () {
   echo "Hello World $1 $2"
   return 10
}

# Invoke your function
Hello Zara Ali

# Capture value returnd by last command
ret=$?

echo "Return value is $ret"

# unset funktion
unset .f Hello


echo "
########################################################################
### GUI with zenity ( Gnome )
########################################################################

"
# Simple GUI input
inputStr=$(zenity --entry --title="My Title" --text="My Text:")

# Simple Gui output
zenity --info --title="My Title" --text="Your input was: $inputStr"

# Simple Gui Date selection
date=`zenity --calendar --date-format=%Y-%m-%d`
echo ${date}

# select list with files from home folder
cd ${HOME}
files=`find . | zenity --list --title "Select a file" --column "Files" --separator=" " --multiple`
for i in ${files}; do
    echo ${i}
done

# progress bar 
lsof | tee > (zenity --progress --pulsate) > /media/raphy/Daten/raphy/Desktop/lsof.txt

# Warning box yes = 0, exit = 1
zenity --warning --text "This will kill, are you sure?";
echo $?		

#zenity --info --text "message here"
#zenity --color-selection
#zenity --file-selection
#zenity --forms
#zenity --list
#zenity --notification
#zenity --password
#zenity --progress
#zenity --scale
#zenity --entry
#zenity --text-info
#zenity --error
#zenity --warning
#zenity --question

