#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
echo "Please login with root user "
exit 1
fi

VALIDATE() {
if [ $1 -ne 0 ]
then 
echo "$2 ... failure"
else
echo "$2 ... success"
fi
}

dnf list installed mysql

if [ $? -ne 0 ] 
then
echo "Installing mysql"
dnf install mysql -y
VALIDATE $? "Installing mysql"
else
echo "Already mysql installed"
fi