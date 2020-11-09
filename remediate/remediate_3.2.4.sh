#!/bin/sh
# ** AUTO GENERATED **

# 3.2.4 - Ensure suspicious packets are logged (Scored)

echo "net.ipv4.conf.all.log_martians = 1" >> /etc/sysctl.conf
echo "net.ipv4.conf.default.log_martians = 1" >> /etc/sysctl.conf
echo "net.ipv4.conf.all.log_martians = 1" >> /etc/sysctl.d/99-sysctl.conf
echo "net.ipv4.conf.default.log_martians = 1" >> /etc/sysctl.d/99-sysctl.conf

sysctl -w net.ipv4.conf.all.log_martians=1
sysctl -w net.ipv4.conf.default.log_martians=1
sysctl -w net.ipv4.route.flush=1
