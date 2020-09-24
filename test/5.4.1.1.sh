#!/bin/sh
# ** AUTO GENERATED **

# 5.4.1.1 - Ensure password expiration is 365 days or less (Scored)

grep -E '365' /etc/login.defs || exit $1
grep -E '365' /etc/shadow || exit $1