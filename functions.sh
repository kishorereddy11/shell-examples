#!/bin/bash

USERID=$(id -u)

VALIDATE(){
if [ $1 -ne 0 ]
then 
echo "$2 Failure"
else
echo "$2 Success"
fi
}

if [ $USERID -ne 0 ] 
then
echo "please login as root user to execute this script"
exit 1
fi

dnf list installed mysql

if [ $? -ne 0 ]
then
dnf install mysql -y
VALIDATE $? "Installing mysql"
else
echo "already installed mysql "
fi