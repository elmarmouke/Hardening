#!/bin/bash 

# 5.3.3 - Ensure password reuse is limited (Scored)

sed '/use_authtok/ s/$/ remember=5/' -i /etc/pam.d/system-auth 
sed '/use_authtok/ s/$/ remember=5/' -i /etc/pam.d/password-auth 