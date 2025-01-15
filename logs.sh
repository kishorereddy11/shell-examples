#!/bin/bash

USERID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"

LOGS_FOLDER="/var/log/shellscript-logs"

if [ -d $LOGS_FOLDER ]
then
echo "Folder exists "
else
echo "Folder does not exist"

mkdir -p "$LOGS_FOLDER"
echo "Folder created" 
fi

VALIDATE(){
    if [ $1 -ne 0 ]
    then
    echo -e "$2 $R failure"
    else
    echo -e "$2 $G success"
    fi
}

if [ $USERID -ne 0 ] 
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