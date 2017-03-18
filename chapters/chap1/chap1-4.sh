#!/bin/bash
# Author : Raphael Martin

TUTFOL="$1"
TUTBEGFIL="$2"
TITLE="Chapter 1 - fundamentals - the first Shell-Script ( | )"


FILENAME="$TUTBEGFIL-hiworld.sh"
clear
{	# try to use gnome terminal
	gnome-terminal -e "vim"
	
}||{
	# cath (else use xterm)
	xterm -e "vim"
	}
echo "########################################################################
### $TITLE
########################################################################

########################################################################
### 
### Open a text-editor.
###
#####
####### Short description for the VIM-editor
#####
###
### I prever the vim in the terminal, witch started autometicly.
### because i don't like to use the mouse.
###
### basics to use vim:
### 	i ... insert mode
### 	esc ... return to command mode
### 	:w ... in command mode --> save file
### 	:q ... in command mode --> close file
### 	:q! ... in command mode --> force close 
### 		if you have not the permissen to write. 
### 		( try to open the file as root (: )
### 
### You can find more informations about this text editor on
### http://www.vim.org/about.php
###
#####
#######	
#####
###	
### Write in the new File:
###
### 	> #!/bin/bash
###	
### with #!/bin/bash you can execute the file and it know's that it 
### should execute as a Shell ( Bash ) file.
###
### That means if you forgot those line you must execute it like
###
### 	> sh YOURSCRIPT.sh
###
### otherweis you can execute it with
###
### 	> ./YOURSCRIPT.sh
###
### 
### add to your File:
### 
### 	> echo 'Hello world'
### or
### 	> printf 'Hello world\n'
###
### \n ... new Line
### echo makes automaticly a new Line
### 
### but those are not the only differents ...
### thoes i will not explain in this tutorial.
###
###
### now save those to lines as $FILENAME.
###
#####
#######
#####
###
### to execute the file you should give it the rights to be executeable
### with:
###
### 	> chmod +x $FILENAME
### 
### and execute it with 
### 
### 	> ./$FILENAME
###
#####
#######" | more

read -p "Press ENTER to auto-create the $FILENAME ..." 
clear

echo "#!/bin/bash
echo 'Hello world'" > $TUTFOL/$FILENAME

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
read -p "Press ENTER if you are ready for variables?" 
clear

FILENAME="$TUTBEGFIL-hiworldvar.sh"
clear

echo "
########################################################################
### 
### Write in the new File $FILENAME:
###
### 	> # !/bin/bash
### 	> 
### 	> output1=Hi,
### 	> output2=\"I hope\"
### 	> output3=' you '
### 	> output4=like\ my\ Tutorial
### 	> 
### 	> echo \$output1\$output2\$output3\$output4
### 
### Those are all kindes to write in variables.
###
### The first can be written in, because it's on word 
### ( the komma is a part of the word )
###
### The second and the third a nearly the same 
### the just use othe delimiters
###
### The last maskates it with the backslash
### that can be also used for \" \' \$ ...
###
#####
#######
#####
###
### now save those file and execute it with
###
### 	> chmod +x $FILENAME
### 	> ./$FILENAME
###
#####
#######" | more

read -p "Press ENTER to create the $FILENAME ..." 
clear

echo "# !/bin/bash

output1=Hi,
output2=\"I hope\"
output3=' you '
output4=like\ my\ Tutorial

echo \$output1\$output2\$output3\$output4" > $TUTFOL/$FILENAME

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
read -p "Press ENTER if you are ready for a file with in and output?" 
clear




FILENAME="$TUTBEGFIL-hiyou.sh"

echo "
########################################################################
### 
### Insert into $FILENAME:
###
### 	> #!/bin/bash
### 	> read -p 'What is your name?' name
### 	> echo \"hi \$name\"
###
### and execute it.
###
#####
#######"

read -p "Press ENTER to auto-create the $FILENAME ..." 
clear


echo "#!/bin/bash
read -p 'What is your name? ' name
echo \"Hello \$name \"" > $TUTFOL/$FILENAME

chmod +x $FILENAME

echo "### the file should look like:
"
cat ./$FILENAME
echo "
### and the output should look like:
"
./$FILENAME
echo ""



FILENAME="$TUTBEGFIL-hiyou.sh"

read -p "Press ENTER if you are ready for a other way to fill variabels?" 
clear

echo "
########################################################################
### 
### Now we will have a look on some spezial kindes of variables.
###
### Create the file $FILENAME with the content:
###
### 	> #!/bin/bash
###		> 
### 	> echo \$#
### 	> echo \$?
###		> echo \$*
### 	> echo \$@
### 	> echo \"hi \$1\"
###
### and execute it like 
###
### 	> ./$FILENAME Hansi und Sisi
###
#####
#######" | more

read -p "Press ENTER to create the hiyou2.sh ..." 
clear

echo "#!/bin/bash

echo \$#
echo \$?
echo \$*
echo \$@
echo \"hi \$1\"" > 

chmod +x $FILENAME
echo "### the file should look like:
"
cat ./$FILENAME
echo "
### and the output should look like:
"
./$FILENAME Hansi und Sisi
echo ""

read -p "Press ENTER to continue ..." 
clear
