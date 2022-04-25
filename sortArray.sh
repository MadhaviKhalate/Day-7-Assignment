#!/bin/bash -x

for((i=0; i<10; i++))
do
    array[i]=$((RANDOM%900+100))
done
echo "The 10 random three digit numbers are: "
echo "${array[@]}"

array=($(printf '%d\n' "${array[@]}"|sort -n))

echo "The sorted array is: "
echo "${array[@]}"

echo "The second largest element is ${array[-2]}"
echo "The second smallest element is ${array[1]}"
