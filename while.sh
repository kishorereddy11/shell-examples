#!/bin/bash

file="/home/ec2-user/text"
cat file |
while read line
do
echo $line
done