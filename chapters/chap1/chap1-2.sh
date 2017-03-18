#!/bin/bash
# Author : Raphael Martin

TUTFOL="$1"
TUTBEGFIL="$2"
TITLE="Chapter 1 - fundamentals - write output to file ( > >> 2> 2>&1 1>&2 )"

clear

FILENAME="$TUTBEGFIL-firstFile.txt"

echo -n "########################################################################
### $TITLE
########################################################################

########################################################################
### 
### Most of the time you don't want to display the output on the 
### comand line, but rather write it in a file.
###
### With > you can redirect the output to a file.
### If the file is alredy existing it will override it.
### Otherwise it will create a new.
###
#####
####### USE >
#####
###
### Press a button to show the result of:
###
### > echo \"This is my first file with content\" > \$TUTFOL/\$FILENAME
###
#####
#######" | more

read -p "" 

echo "This is my first file with content" > $TUTFOL/$FILENAME
clear


OUTPUT="########################################################################
###
### Now you find in 
### $TUTFOL
### the file $FILENAME
### with the content:
###"

prefix="### > "
while read line; 
do 
OUTPUT="$OUTPUT\n${prefix}$line"
done < $TUTFOL/$FILENAME;

OUTPUT="$OUTPUT
###
###
##### You can check this in the terminal with
### 
### > cat $FILENAME
###
#####
####### USE >>
#####
###
### With >> you can add the output to a file.
###
###
### Press ENTER button to add this to the file:
###
### > echo \"This is my first added line to a file\" > \$TUTFOL/\$FILENAME
###
#####
#######"

echo -e "$OUTPUT" | more

read -p "" 

echo "This is my first added line to a file" >> $TUTFOL/$FILENAME
clear


OUTPUT="########################################################################
###
### Now you find in the same file ($FILENAME)
### the content:
###"

prefix="### > "
while read line; 
do 
OUTPUT="$OUTPUT\n${prefix}$line"
done < $TUTFOL/$FILENAME;

OUTPUT="$OUTPUT
###
###
### You can check this in the terminal with
### 
### > cat $FILENAME
###
########################################################################
"

echo -e "$OUTPUT" | more

read -p "Press ENTER to continue ..." 
clear



OUTPUT="$OUTPUT
###
###
##### You can check this in the terminal with
### 
### > cat $FILENAME
###
#####
####### USE >>
#####
###
### With >> you can add the output to a file.
###
###
### Press ENTER button to add this to the file:
###
### > echo \"This is my first added line to a file\" > \$TUTFOL/\$FILENAME
###
#####
#######"

echo -e "$OUTPUT" | more

read -p "" 

echo "This is my first added line to a file" >> $TUTFOL/$FILENAME
clear


OUTPUT="########################################################################
###
### Now you find in the same file ($FILENAME)
### the content:
###"

prefix="### > "
while read line; 
do 
OUTPUT="${OUTPUT}\n${prefix}${line}"
done < $TUTFOL/$FILENAME;

OUTPUT="$OUTPUT
###
###
### You can check this in the terminal with
### 
### > cat $FILENAME
###
########################################################################
"

echo -e "$OUTPUT" | more

read -p "Press ENTER to continue ..." 
clear


