#!/bin/sh
# ** AUTO GENERATED **

# 1.1.21 Ensure sticky bit is set on all world-writable directories (Scored)

df --local -P | awk '{if (NR!=1) print $6}' | xargs -I '{}' find '{}' -xdev -type d \( -perm -0002 -a ! -perm -1000 \) 2>/dev/null | xargs -I '{}' chmod a+t '{}'
