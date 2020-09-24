#!/bin/sh
# ** AUTO GENERATED **

# 3.3.1 - Ensure IPv6 router advertisements are not accepted (Not Scored)

ip addr show | grep net6 || exit 0