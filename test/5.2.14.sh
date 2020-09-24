#!/bin/sh
# ** AUTO GENERATED **

# 5.2.14 -  Ensure SSH access is limited (Scored)

sshd -T | grep 'banner /etc/issue.net'
