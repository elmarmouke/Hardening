#!/bin/bash 

# 5.4.1.1 - Ensure password expiration is 365 days or less (Scored)

sed 's/99999/365/g' -i /etc/login.defs 
sed 's/99999/365/g' -i /etc/shadow 