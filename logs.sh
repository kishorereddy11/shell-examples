#!/bin/bash

USERID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"

VALIDATE(){
    if [$1 -ne 0 ]
    then
    echo -e "$2 $R failure"
    else
    echo -e "$2 $G success"
}

if [ $USERID -ne 0] 
then
    echo -e  "$R please use root user to execute this script"
    exit 1
fi

dnf list installed mysql

if [$? -ne 0 ]
then 
    dnf install mysql -y
    VALIDATE "$?" "Installing mysql"
else
echo -e "Mysql is already ... $Y installed"
fi