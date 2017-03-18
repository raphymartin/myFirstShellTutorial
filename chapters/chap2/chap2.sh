#! /bin/bash

TUTFOL="$1"
TUTBEGFIL="$2"
NAME="$3"
TITLE="Chapter 1 - if, case & loops"

clear




selection=
until [ "$selection" = "0" ]; 
do
	echo "########################################################################"
	echo "### $TITLE"
	echo "########################################################################"
    echo "###"
    echo "### 1 - Step by step"
    echo "###"
    echo "### 2 - if, case, select"
    echo "### 3 - loops: while, for, util"
    echo "###"
    echo "### 0 - Back to Main-menu"
    echo "###"
    echo -n "Enter selection: "
    read selection

    case $selection in
        1 ) 
			./chapters/chap2/chap2-1.sh $TUTFOL $TUTBEGFIL $NAME
			./chapters/chap2/chap2-2.sh $TUTFOL $TUTBEGFIL $NAME
			;;
			
		2 ) ./chapters/chap2/chap2-1.sh $TUTFOL $TUTBEGFIL $NAME
			;;
		3 ) ./chapters/chap2/chap2-2.sh $TUTFOL $TUTBEGFIL $NAME
			;;
        0 ) clear
			break ;;
        * ) echo "Please enter 1, 2 or 0"
    esac
done
