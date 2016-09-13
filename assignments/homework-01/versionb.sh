#!/bin/bash
#echo $1
fname=$( basename $1 .sh )
echo $fname
if [ -f  $1 ]
then
D=$( date +%F )
#echo $D
doit=$( cp $1 $fname"1""_"$D.txt ) 
echo $doit
else
echo You entered a directory name ..please enter the file name.
fi



