#!/bin/sh
# ** AUTO GENERATED **

# 4.2.4 - Ensure permissions on all logfiles are configured (Scored)

find /var/log -type f -perm /g+wx,o+rwx -exec ls -l {} \; || exit 1
