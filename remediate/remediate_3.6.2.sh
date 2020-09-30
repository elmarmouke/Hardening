#!/bin/sh
# ** AUTO GENERATED **

# 3.6.2 - Ensure default deny firewall policy (Scored)

iptables -P INPUT DROP
iptables -P OUTPUT DROP
iptables -P FORWARD DROP