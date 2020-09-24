#!/bin/bash 
echo "net.ipv4.conf.all.send_redirects = 0" >> /etc/sysctl.conf
echo "net.ipv4.conf.default.send_redirects = 0" >> /etc/sysctl.conf
sysctl -w net.ipv4.conf.all.send_redirects=0 
sysctl -w net.ipv4.conf.default.send_redirects=0 
sysctl -w net.ipv4.route.flush=1