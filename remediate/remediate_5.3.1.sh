#!/bin/bash 

# 5.3.1 Ensure password creation requirements are configured (Scored)
echo "minlen = 14" >> /etc/security/pwquality.conf 
echo "minclass = 14" >> /etc/security/pwquality.conf

echo "password requisite pam_pwquality.so try_first_pass retry=3" >> /etc/pam.d/password-auth
echo "password requisite pam_pwquality.so try_first_pass retry=3" >> /etc/pam.d/system-auth