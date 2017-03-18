#!/bin/bash
# Author : Raphael Martin

TUTFOL="$1"
TUTBEGFIL="$2"
TITLE="Chapter 1 - fundamentals - warmUp"
clear

{	# try to use gnome terminal
	xterm -e "echo 'Try, the stuf from the tutorial here'"
	gnome-terminal -hold -e "echo 'Try, the stuf from the tutorial here'"
	
}||{
	# cath (else use xterm)
	xterm -hold -e "echo 'Try, the stuf from the tutorial here'"
	}


echo "########################################################################
### $TITLE
########################################################################
"
echo " 
########################################################################
### Hallo $USER,
### First we will start with some common comands from the UNIX world.
### 
### cd ... change directory 
### for example
### cd /home
###
###
### ls ... shows a content from a folder
### ls -l ... shows more details
###
###
###
### Press a button to show the result of:
###
### > cd ~ && ls -l
###
#####
#######" | more

read -p "" 
clear

cd ~ && ls -l | more
echo \
read -p "Press any key to continue ..." 
clear

echo -n "
########################################################################
### 
### So, what happen now ?
### 
### cd ~ ... changed to your home folder
### && ... is used to execute two comands in one line
### ls -l ... shows the content from the active folder
### 
########################################################################
" | more
read -p "Press ENTER to continue ..." 
clear

echo -n "
########################################################################
### 
### You can give a command with ALIAS a new name to call the funktion?
### 
### For example:
### 
### > alias l=\"ls -l\"
### 
### Try this in your terminal and execute ls -l afterwords execute it
### with typing only l in the terminal
### 
########################################################################
" | more
