# #!/bin/bash
# echo "Enter username :"
# read -p USERNAME
# echo "\nEntered username $USERNAME"
# echo "Enter the password :"
# read -sp PASSWORD
# echo "\nEntered password $PASSWORD"

#!/bin/bash

echo "Please enter your username::" # text entered here will be added as value to variable

read -s USERNAME # Here USERNAME is the variable name

echo "username entered: $USERNAME"

echo "Please enter your password::"

read -s PASSWORD