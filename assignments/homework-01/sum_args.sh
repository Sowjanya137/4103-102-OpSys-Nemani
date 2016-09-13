#!/bin/bash
myarray=$@
count=$#
sum=0

for i in ${myarray[@]};
do
 echo -n   $i
 break;
done

for i in ${myarray[@]:2};
do
echo -n  "+" $i 
done

for i in ${myarray[@]};
do
  let sum=$sum+$i
done
echo -n "=" $sum
echo ""



