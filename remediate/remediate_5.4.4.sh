#!/bin/sh
# ** AUTO GENERATED **

# 5.4.4 - Ensure default user umask is 027 or more restrictive (Scored)

sed 's/002/027/' -i /etc/bashrc
sed 's/022/027/' -i /etc/bashrc
sed 's/002/027/' -i /etc/profile
sed 's/022/027/' -i /etc/profile
umask 027
