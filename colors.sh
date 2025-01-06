#!/bin/bash

USERID=$(id -u)
R="\e[31m]"
G="\e[32m]"
Y="\e[33m]"

if [ $USERID -ne 0 ]
then
echo "Please login with root user "
exit 1
fi

VALIDATE() {
if [ $1 -ne 0 ]
then 
echo -e "$2 ... $R failure"
else
echo -e "$2 ... $G success"
fi
}

dnf list installed mysql

if [ $? -ne 0 ] 
then
echo "Installing mysql"
dnf install mysql -y
VALIDATE $? "Installing mysql"
else
echo -e "$Y Already mysql installed $NF"
fi