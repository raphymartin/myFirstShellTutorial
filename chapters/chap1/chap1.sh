#!/bin/bash
# Author : Raphael Martin

TUTFOL="$1"
TUTBEGFIL="$2"
TITLE="Chapter 1 - fundamentals"

clear


selection=
until [ "$selection" = "0" ]; 
do

echo "########################################################################
### $TITLE
########################################################################
###
### 1 - Step by step
###
### 2 - warmUp
### 3 - write output to file ( > >> )
### 4 - redirect to command with pipe ( | )
### 5 - the first Shell-Script ( input & output )
### 6 - Calculate in a Shell-Script
### 7 - Comments
###
### 0 - Back to Main-menu
###
### Enter your selection: " | more
    read selection
    
    case $selection in
        1 ) 
			./chapters/chap1/chap1-1.sh $TUTFOL $TUTBEGFIL 
			./chapters/chap1/chap1-2.sh $TUTFOL $TUTBEGFIL 
			./chapters/chap1/chap1-3.sh $TUTFOL $TUTBEGFIL 
			./chapters/chap1/chap1-4.sh $TUTFOL $TUTBEGFIL 
			./chapters/chap1/chap1-5.sh $TUTFOL $TUTBEGFIL 
			./chapters/chap1/chap1-6.sh $TUTFOL $TUTBEGFIL 
			;;
			
		2 ) ./chapters/chap1/chap1-1.sh $TUTFOL $TUTBEGFIL 
			;;
		3 ) ./chapters/chap1/chap1-2.sh $TUTFOL $TUTBEGFIL 
			;;
		4 ) ./chapters/chap1/chap1-3.sh $TUTFOL $TUTBEGFIL 
			;;
		5 ) ./chapters/chap1/chap1-4.sh $TUTFOL $TUTBEGFIL 
			;;
		6 ) ./chapters/chap1/chap1-5.sh $TUTFOL $TUTBEGFIL 
			;;
		7 ) ./chapters/chap1/chap1-6.sh $TUTFOL $TUTBEGFIL 
			;;
        0 ) clear 
			break ;;
        * ) echo "Please enter 1, 2, 3, 4, 5, 6, 7 or 0"
    esac
done
