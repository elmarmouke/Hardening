#!/bin/sh
# ** AUTO GENERATED **

# 5.3.3 - Ensure password reuse is limited (Scored)

grep -E 'remember=5' /etc/pam.d/system-auth || exit $1
grep -E 'remember=5' /etc/pam.d/password-auth || exit $1