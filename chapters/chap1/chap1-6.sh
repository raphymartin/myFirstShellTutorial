#!/bin/bash
# Author : Raphael Martin

TUTFOL="$1"
TUTBEGFIL="$2"
TITLE="Chapter 1 - fundamentals - comments ( # )"


FILENAME="$TUTBEGFIL-comment.sh"
echo "" > $TUTFOL/$FILENAME

clear


echo "# !/bin/bash
# Author : Raphael Martin

pwd  # print the directory name respectively the aktiv folder path
ls   # print the directory content" > $TUTFOL/$FILENAME


OUTPUT="########################################################################
### $TITLE
########################################################################

########################################################################
#######
#####
###
### If you want to write a comment into your script, you must set in 
### front of it a hash ( # ).
###
#####
####### Example
#####"

prefix="### > "
file=$FILENAME

while read line; 
do 
OUTPUT="$OUTPUT\n${prefix}$line"
done < $FILENAME;
OUTPUT="$OUTPUT\n#####\n#######"

read -p "Press ENTER to auto-create the $FILENAME ..." 
clear

cd $TUTFOL
chmod +x $FILENAME

echo ""
echo "### the file should look like:
"
cat $FILENAME
echo "
### and the output should look like:
"
./$FILENAME
echo ""
read -p "Press ENTER to continue?" 
clear
