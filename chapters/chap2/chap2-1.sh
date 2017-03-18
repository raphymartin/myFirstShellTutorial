#!/bin/bash
# Author : Raphael Martin

echo "########################################################################
###
### To use the if funktion you must have some operation that can 
### be bompare some values and return TRUE or FALSE ( boolean value )
###
###
### for chat-string (text)
###
### \$s1 = \$s2
### 	true, if \$s1 has the same content than \$s2
### \$s1 != \$s2
### 	true, if \$s1 has't
### -z \$s1
### 	true, if the length of \$s1 is 0 (empty) 
### -n \$s1
### 	true, if the length of \$s1 is not 0 (not empty) 
###
###
### for integers
###
### \$n1 -eq \$n2
### 	true, if the Integers are the same
### \$n1 -ne \$n2
### 	true, if the Integers are not the same
### \$n1 -gt \$n2
### 	true, if the number \$n1 is bigger than \$n2 
### \$n1 -ge \$n2
### 	true, if the number \$n1 is bigger or same like \$n2
### \$n1 -lt \$n2
### 	true, if the number \$n1 is smaller than $\n2 
### \$n1 -le \$n2
### 	true, if the number  \$n1 is smaller or same like \$n2
###
###
### other operators
###
### !	negation
###
### -a	logikal AND
###
### -o	logikal OR (-a has a higher priority) 
###
### \( ... \)
### 	to group some operations
###
### -f	filename
### 	true, if file exists
###
### -d	foldername
### 	true, if folder exists
###
###"

echo "
########################################################################
### if, case
########################################################################

"
# simple input
echo "What's your name?"
read in
if [ "$in" == "root" ]
    then
        echo "hi root."
    else
        echo "hi user."
fi

# file check
mkdir ~/test.txt
if [ -f ~/test.txt ]
  then
    echo "the file test.txt in your home folder exists."
elif [ -d ~/test.txt ]
    then
      echo "test.txt is a folder"
else
    echo "the file test.txt in your home folder is missing"
fi

# formated input and case
read -p "Enter your name:" name


case "$name" in
        Frank|frank) 
			echo "hi, Frank"
            ;;
        Alex|alex) 
			echo "hi, Alex"
            ;;
            raphael|Raphael|raphy|Raphy|rama|Rama|"Raphael Martin") 
			echo "hi, Raphael Martin"
            ;;
        *) 
			echo "hi, stranger!"
            ;;
esac


# Installer sample
read -p "continue?:" answer

case "$answer" in
		Yes|yes|Y|y|j|J"") 
			echo "Ok lets go on"
            ;;
        No|no|N|n) 
			echo "abort"
                   exit 1
            ;;
		*) 
            echo "wrong parameter" 
            ;;
esac
