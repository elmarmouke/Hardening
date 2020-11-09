#!/bin/sh
# ** AUTO GENERATED **

# 5.3.2 - Ensure lockout for failed password attempts is configured (Scored)

#If pam_failock.so is used:
grep -E "auth +required +pam_tally2.so +deny=5 +onerr=fail +unlock_time=900" /etc/pam.d/system-auth /etc/pam.d/password-auth
grep -E "auth +sufficient +pam_unix.so +nullok +try_first_pass" /etc/pam.d/system-auth /etc/pam.d/password-auth
grep -E "auth +[default=die] +pam_faillock.so +authfail +audit +deny=5 +unlock_time=900" /etc/pam.d/system-auth /etc/pam.d/password-auth
grep -E "account +required +pam_faillock.so" /etc/pam.d/system-auth /etc/pam.d/password-auth
