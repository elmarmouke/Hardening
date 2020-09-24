#!/bin/sh
# ** AUTO GENERATED **

# 3.6.3 - Ensure loopback traffic is configured (Scored)

iptables -A INPUT -i lo -j ACCEPT
iptables -A OUTPUT -i lo -j ACCEPT
iptables -A INPUT -s 127.0.0.0/8 -j DROP