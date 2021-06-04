#!/bin/bash

echo "Arithmetic Computation & Sorting"

echo "Enter three numbers: "
read a
read b
read c 

result1=`echo | awk "{print $a+$b*$c}"`
result2=`echo | awk "{print $a*$b+$c}"`
result3=`echo | awk "{print $c+$a/$b}"`
