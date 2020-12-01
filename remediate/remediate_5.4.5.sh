#!/bin/sh
# ** AUTO GENERATED **

# 5.4.5 - Ensure default user shell timeout is 900 seconds or less (Scored)

echo "readonly TMOUT=600 ; export TMOUT" >> /etc/bashrc
echo "readonly TMOUT=600 ; export TMOUT" >> /etc/profile
export TMOUT=600
