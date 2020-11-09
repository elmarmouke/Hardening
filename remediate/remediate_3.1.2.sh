#!/bin/bash 
# ** AUTO GENERATED **

# 3.1.2 Ensure packet redirect sending is disabled (Scored)

echo "net.ipv4.conf.all.send_redirects = 0" >> /etc/sysctl.conf
echo "net.ipv4.conf.default.send_redirects = 0" >> /etc/sysctl.conf
echo "net.ipv4.conf.all.send_redirects = 0" >> /etc/sysctl.d/99-sysctl.conf
echo "net.ipv4.conf.default.send_redirects = 0" >> /etc/sysctl.d/99-sysctl.conf
sysctl -w net.ipv4.conf.all.send_redirects=0 
sysctl -w net.ipv4.conf.default.send_redirects=0 
sysctl -w net.ipv4.route.flush=1
