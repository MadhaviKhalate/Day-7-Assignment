#!/bin/bash -x

counter=0

Fruits[((counter++))]="Apple"
Fruits[((counter++))]="Pineapple"
Fruits[((counter++))]="Orange"
Fruits[((counter++))]="Mango"

echo ${Fruits[@]}
