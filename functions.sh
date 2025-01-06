!#/bin/bash

USERID=$(id -u)

if [ USERID -ne 0 ] 
then
echo "please login as root user to execute this script"
exit 1
fi

