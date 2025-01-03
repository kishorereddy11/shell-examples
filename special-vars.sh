#!/bin/bash

echo "present working directory: $PWD"
echo "current user: $USER"
echo "Home directory of current user: $HOME"
echo "Last command status : $?"
echo "All the variables passed : $@"
echo "No. of vaibles passed: $#"
echo "Scipt name: $0"
echo "Process id of current script : $$"
sleep 60 &
echo "process id of last command in background process $!"

