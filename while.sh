#!/bin/bash

file="/home/ec2-user/text"
while read -r line
do
echo $line
done <<< $file