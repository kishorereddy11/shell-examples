#!/bin/bash
uname=$(id -u)
if [ uname -eq 0]
then 
echo "current user is root user"
else
echo "current user is not a root user"
fi