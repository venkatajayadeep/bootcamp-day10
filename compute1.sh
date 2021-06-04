#!/bin/bash

echo "Arithmetic Computation & Sorting"

echo "Enter three numbers: "
read a
read b
read c 

result1=`echo | awk "{print $a+$b*$c}"`
