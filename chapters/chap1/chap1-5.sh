#!/bin/bash
# Author : Raphael Martin



TUTFOL="$1"
TUTBEGFIL="$2"
TITLE="Chapter 1 - fundamentals - Calculate in a Shell-Script"

clear
cd $TUTFOL



FILENAME="$TUTBEGFIL-calcAddition.sh"

OUTPUT="########################################################################
### $TITLE
########################################################################

########################################################################
### 
### There are several ways to calculate somthing in a Shell-Script 
### I think those are two of the most used:
###
### The sample file $FILENAME:
###"



# Create calcAdd.sh

echo "#!/bin/sh

echo \"Give me a number x: \"
read x
echo \"Give me a number y: \"
read y
echo \"# The expr method:\"
echo \"\"
echo \"\"
echo exprans=\`expr \$x + \$y\`
exprans=\`expr \$x + \$y\`
echo \"\"
echo \"# The bc method:\"
bcans=\`echo \$x + \$y | bc\`
echo \"\"
echo addition to expr, \$x + \$y = \$exprans
echo addition to bc,   \$x + \$y = \$bcans" > $TUTFOL/$FILENAME


prefix="### > "
file=$FILENAME

while read line; 
do 
OUTPUT="$OUTPUT\n${prefix}$line"
done < $FILENAME;
OUTPUT="$OUTPUT\n#####\n#######"

echo -e "$OUTPUT" | more

echo ""
read -p "Press ENTER to execute cat $FILENAME" 

chmod +x $FILENAME
clear
echo "### the file should look like:
"
cat ./$FILENAME

echo -e "\n\n"
read -p "Press ENTER to execute ./$FILENAME" 
echo "
"
./$FILENAME
echo ""

echo -e "\n\n"
read -p "Press ENTER to show more arithmetic operations ..." 
clear


FILENAME="$TUTBEGFIL-calcRest.sh"

echo "# !/bin/sh

echo \"Give me a number x: \"
read x
echo \"Give me a number y: \"
read y
echo \
echo Other arithmetic operators from expr
echo \
exprans=\`expr \$x - \$y\`
echo subtraction \$x - \$y = \$exprans
echo ''
exprans=\`expr \$x * \$y\`
echo multiplication \$x * \$y = \$exprans
echo ''
exprans=\`expr \$x / \$y\`
echo division \$x / \$y = \$exprans
echo ''
exprans=\`expr \$x % \$y\`
echo modulus \$x % \$y = \$exprans
echo ''
exprans=\`expr \$x != \$y\`
echo not equality \$x != \$y = \$exprans
echo ''
exprans=\`expr \$x == \$y\`
echo equality \$x == \$y = \$exprans
" > $TUTFOL/$FILENAME

chmod +x $FILENAME
clear
echo "### the script content looks like:
"
cat ./$FILENAME | more

echo ""
read -p "Press ENTER to show the output" 
echo "
"
./$FILENAME
echo ""

read -p "Press ENTER to continue ..." 
clear
