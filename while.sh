#!/bin/bash

file="/home/ec2-user/text"
while read line
do
echo $line
done <<< file