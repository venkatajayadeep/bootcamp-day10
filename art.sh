!/bin/bash 

echo $'\n'"Arithmetic Computation & Sorting"

echo $'\n'"Enter three numbers: "
read a
read b
read c 

declare -A resultDict
arr=()

for (( i = 0; i < 4; i++ )); do
	case $i in
		0)	result=`echo | awk "{print $a+$b*$c}"`
			resultDict[$i]=$result 
			;;
		1)	result=`echo | awk "{print $a*$b+$c}"`
			resultDict[$i]=$result 
			;;
		2)	result=`echo | awk "{print $c+$a/$b}"`
			resultDict[$i]=$result 
			;;
		3)	result=`echo | awk "{print $a%$b+$c}"`
			resultDict[$i]=$result 
			;;
	esac
done

for (( i = 0; i < 4; i++ )); do
	arr[$i]=${resultDict[$i]}
done

echo $'\n'"Computations Sorted in Descending Order: "
sort -nr <(printf "%.2f\n" "${arr[@]}")

echo $'\n'"Computations Sorted in Ascending Order: "
sort -n <(printf "%.2f\n" "${arr[@]}")
