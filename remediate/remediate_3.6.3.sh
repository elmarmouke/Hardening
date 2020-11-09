#!/bin/sh
# ** AUTO GENERATED **

# 3.6.3 - Ensure loopback traffic is configured (Scored)

firewall-cmd --permanent --zone=trusted --add-interface=lo
firewall-cmd --zone=drop --add-rich-rule='rule family=ipv4 source address="127.0.0.1" destination not address="127.0.0.1" drop' --permanent
