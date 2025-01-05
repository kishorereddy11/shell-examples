#!/bin/bash
uname=$(id -u)
if [ $uname -eq 0]
then 
echo "current user is root user"
install()
else
exit 1
fi

validate() {
 if [ $1 -eq 0] 
 then 
 echo "$2 Sucess"
 else
 echo "$2 Failure"
}


install(){
    dnf list installed mysql
    if [ $? -eq 0]
    then
    dnf install mysql -y
    validate $? "installing mysql"
    else
    validate $? "already present mysql"
}
