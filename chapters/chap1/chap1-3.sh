#!/bin/bash
# Author : Raphael Martin

TUTFOL="$1"
TUTBEGFIL="$2"
TITLE="Chapter 1 - fundamentals - redirect to command with pipe ( | )"

clear

echo "########################################################################
### $TITLE
########################################################################
"

echo "
########################################################################
### 
### With | you can redirect the output to a other command.
### 
###	
### Have a look at the following output and enter afterwords 
### a keyword to search for:
### 
### Commands:
### > cd ~
### > ls -l | more
### > ls -l | grep YOURKEYWORD | more
### 
### resize the terminal window to find out what effect '| more' has
###
#####
#######
"
read -p "Press any key to show the output ..." 

cd ~
ls -l | more
echo ""
read -p "search for a keyword:" keyword
ls -l | grep $keyword | more


read -p "Press any button to continue ..."
clear

echo "
########################################################################
### 
### You can finde some commands at http://ss64.com/bash/
###
### or you can use \"Linux Man Pages Online\", that can you find at
### http://man.de.net
###
### To find out with paramete has with effect to the command,
### I usually use man to finde more information.
### 
### for example:
### > man rm
###"
read -p "Press ENTER to show the man-page from rm..." 

man rm
clear
