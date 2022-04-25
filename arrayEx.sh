#!/bin/bash -x

array=(harshith, madhavi, suraj, shubhom, harini, vijaylakshmi, gopal, 800, 54, 651, 789466115);

#to print all elements of array
echo ${array[@]}
echo ${array[*]}
echo ${array[@]:0}
echo ${array[*]:0}

#to print first element
echo ${array[0]}
echo ${array}

#to print particular element
echo ${array[3]}
echo ${array[9]}

#to print elements from particular index
echo ${array[@]:6}
echo ${array[@]:5}

#to print elements from particular range
echo ${array[@]:7:11}
