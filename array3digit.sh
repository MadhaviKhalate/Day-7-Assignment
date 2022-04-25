#!/bin/bash -x

for((i=0; i<10; i++))
do 
    array[i]=$((RANDOM%900+100))
done

echo "The 10 random 3 digit numbers are: "
echo "${array[@]}"

for((i=0; i<10-1; i++))
do
    for((j=0; j<10-i-1; j++))
    do
        if((array[j] > array[j+1]))
        then
            temp=${array[j]}
            array[j]=${array[j+1]}
            array[j+1]=$temp
 	fi   
    done     
done

echo "The sorted array is: "
echo "${array[@]}"

echo "The second largest element is ${array[8]}"
echo "The second smallest element is ${array[1]}"
