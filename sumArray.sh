#!/bin/bash -x

echo -n "Enter no of elements in the array: " 
read n
echo "Enter $n elements" n
for(( i=0; i<n; i++ ))
do
    read x
    array[$i]=$x
done
 
for(( i=0; i<$((n-2)); i++ ))
do
    for(( j=$((i+1)); j<$((n-1)); j++ ))
    do
        for(( k=$((j+1)); k<$n; k++ ))
        do
            sum=$((${array[i]}+${array[j]}+${array[k]}))
	    
	    if(( $sum==0 ))
            then
                echo "The triplet is: ${array[i]} ${array[j]} ${array[k]}"
		exit 0           
 	    fi
        done
    done
done

