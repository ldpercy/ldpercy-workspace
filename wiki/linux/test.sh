#!/bin/bash

# test
#
# sudo ./backup/test.sh
#


# Who is user when called via sudo?
echo $USER

# Answer: root

# https://stackoverflow.com/questions/3522341/identify-user-in-a-bash-script-called-by-sudo

echo $SUDO_USER
echo $logname
whoami
