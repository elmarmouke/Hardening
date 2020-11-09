#!/bin/sh
# ** AUTO GENERATED **

# 3.6.3 Ensure loopback traffic is configured (Scored)
iptables -L INPUT -v -n | grep -E  "+0 +0 +ACCEPT +all +-- +lo +\* +0.0.0.0/0 +0.0.0.0/0"
firewall-cmd --list-all --zone=drop | grep -E 'rule family="ipv4" source address="127.0.0.1" destination not address="127.0.0.1" drop'
