#!/bin/bash
logs="/home/ec2-user/"

find_files=$(find $logs -name "*es.sh")
while read -r filepath
do 
echo "$filepath"
done << $find_files