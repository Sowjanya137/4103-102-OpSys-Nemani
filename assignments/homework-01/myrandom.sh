#!/bin/bash

n=$(cat /usr/share/dict/words | wc -l)
l=$(( ($RANDOM * 32768 + $RANDOM) % n ))
echo -n "Random Word: "$(cat /usr/share/dict/words | head -$l | tail -1)
echo ""


#===============Method 2 
#===============Using jot==============
#n=$(cat /usr/share/dict/words | wc -l)
#do1=$(cat -n /usr/share/dict/words | grep -w $(jot -r 1 1 $n) | cut -f2)
#echo $do1

