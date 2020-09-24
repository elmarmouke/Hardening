#!/bin/sh
# ** AUTO GENERATED **

# 5.2.15 -  Ensure SSH warning banner is configured (Scored)

sshd -T | grep 'banner /etc/issue.net'
