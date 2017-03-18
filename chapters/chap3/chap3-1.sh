#!/bin/bash
# Author : Raphael Martin

echo "
########################################################################
### Arrays
########################################################################

"

Unix[0]='Debian'
Unix[1]='Red hat'
Unix[2]='Ubuntu'
Unix[3]='Suse'

# initializaition and deklaration
Shell=('bash' 'csh' 'jsh' 'rsh' 'ksh' 'rc' 'tcsh');

# returns Unix[1]
echo "Unix[1] = "${Unix[1]}

# returns the whole array
echo "Unix: "${Unix[@]}

# length of Unix (array size)
echo "Size from Unix: "${#Unix[@]}

# length of Unix[0]
echo "Size from Unix[0]: "${#Unix}

j=`expr ${#Unix[@]} - 1`
i=0
while [ $i -le $j ]
do
	#length of Unix[$i]
	echo "Size from Unix["$i"] =" ${#Unix[$i]}
	i=`expr $i + 1`
done

# it replaces the element in the Unix[2] ‘Ubuntu’ with ‘SCO Unix’.
echo ${Unix[@]/Ubuntu/SCO Unix}

# adds 'AIX’ and ‘HP-UX’ to the Unix array
Unix=("${Unix[@]}" "AIX" "HP-UX")
echo ${Unix[@]}

# remove an element from the array
unset Unix[3]
echo ${Unix[@]}

pos=3
# retutns from Unix[0] till Unix[$pos]
echo ${Unix[@]:0:$pos}

# retutns every Element from Unix[$pos+1]
echo ${Unix[@]:$(($pos + 1))}

# writes to Unix
Unix=(${Unix[@]:0:$pos} ${Unix[@]:$(($pos + 1))})
echo ${Unix[@]}

# cuts Red out off the array
declare -a patter=( "${Unix[@]/Red*/}" )
echo ${patter[@]}

# copy the array
Linux=("${Unix[@]}")
echo ${Linux[@]}

# Concatenation of two Arrays
UnixShell=("${Unix[@]}" "${Shell[@]}")
echo ${UnixShell[@]}
echo ${#UnixShell[@]}

# Deleting an Array
unset UnixShell
echo ${#UnixShell[@]}

# creats a file logfile with the folowing content
echo "Welcome
to my first
tutorial" > logfile

# returns the content from the logfile
echo `cat "logfile" `
# or
echo `< "logfile" `

# writes each word from the logfile to the array
filecontent=( `< "logfile" `)

# returns each element(word) with a for loop
for t in "${filecontent[@]}"
do
	echo $t
done

# adds a line to the file
echo "###### RaMa ######" >> logfile

# writes each line from the logfile to the array
mapfile -t filecontent < "logfile"

# returns the whole array formated 
printf "%s\n" "${filecontent[@]}"


echo "
