#!/bin/bash

Number1=$1
Number2=$2
time=$(date)
echo "script executed time $time"
sum=$((Number1+Number2))

echo "Sum of $Number1 and $Number2 is $sum" 