#!/bin/bash

echo "
########################################################################
### loops: while, for, util, select
########################################################################

"
# WHILE
i=0
while [ $i -le 10 ]
do
	echo $i
	i=`expr $i + 1`
done

# FOR 1
for wort in "what" "the" "fuck" "is" "going" "on!"
  do
    echo "$wort"
done

# FOR 2
for file in ./*/* ; 
do 
	echo ""
	echo "Diese Datei: $file"
	fname=$(basename "$file")
	echo "hat den Namen: $fname"
	fdir=$(dirname "$file")
	echo "und steht im Verzeichnis: $fdir"
done

# FOR 3 - with array
NUMS="1 2 3 4 5 6 7"

for NUM in $NUMS
do
   Q=`expr $NUM % 2`
   if [ $Q -eq 0 ]
   then
      echo "Number is an even number!!"
      continue
   fi
   echo "Found odd number"
done

# UNTIL
i=20
until [ $i -le 10 ]
do
   echo $i
   i=`expr $i - 1`
done

# SELECT 1
PS3="Enter the space shuttle to get quick information : "
 
# set shuttle list
select shuttle in columbia endeavour challenger discovery atlantis enterprise pathfinder exit
do
	case $shuttle in
		columbia)
			echo "--------------"
			echo "Space Shuttle Columbia was the first spaceworthy space shuttle in NASA's orbital fleet."
			echo "--------------"
			;;
		endeavour)
			echo "--------------"		
			echo "Space Shuttle Endeavour is one of three currently operational orbiters in the Space Shuttle." 
			echo "--------------"		
			;;
		challenger) 
			echo "--------------"				
		    echo "Space Shuttle Challenger was NASA's second Space Shuttle orbiter to be put into service."
			echo "--------------"				    
			;;		
		discovery) 
			echo "--------------"		
			echo "Discovery became the third operational orbiter, and is now the oldest one in service."
			echo "--------------"							
			;;		
		atlantis)
			echo "--------------"		
			echo "Atlantis was the fourth operational shuttle built."
			echo "--------------"							
			;;
		enterprise)
			echo "--------------"		
			echo "Space Shuttle Enterprise was the first Space Shuttle orbiter."
			echo "--------------"							
			;;		
		pathfinder)
			echo "--------------"		
			echo "Space Shuttle Orbiter Pathfinder is a Space Shuttle simulator made of steel and wood."
			echo "--------------"							
			;;
		exit)
       	        echo "Bye!"
				break
				;;
		*)		
			echo "Error: Please try again (select 1..7)!"
			;;		
	esac
done

# SELECT 2


selection=
until [ "$selection" = "0" ]; do
    echo ""
    echo "PROGRAM MENU"
    echo "1 - display free disk space"
    echo "2 - display free memory"
    echo ""
    echo "3 - break program"
    echo "0 - exit program"
    echo ""
    echo -n "Enter selection: "
    read selection
    echo ""
    case $selection in
        1 ) df ;;
        2 ) free ;;
        0 ) exit ;;
        3 ) break ;;
        * ) echo "Please enter 1, 2, 3, or 0"
    esac
done
