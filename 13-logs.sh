#!/bin/bash

USERID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"

LOGS_FOLDER="/var/log/shellscript-logs"
LOG_FILE=$(echo $0 | cut -d "." -f1 )

TIMESTAMP=$(date +%Y-%m-%d-%H-%M-%S)

LOG_FILE_NAME="$LOGS_FOLDER/$LOG_FILE/$TIMESTAMP.log"

# echo "Script started at $TIMESTAMP" &>>$LOG_FILE_NAME
echo "Script started executing at: $TIMESTAMP" &>>$LOG_FILE_NAME

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

dnf list installed mysql &>>$LOG_FILE_NAME

if [ $? -ne 0 ]
then 
    dnf install mysql -y &>>$LOG_FILE_NAME
    VALIDATE "$?" "Installing mysql"
else
echo -e "Mysql is already ... $Y installed"
fi