#!/bin/sh
# ** AUTO GENERATED **

# 4.2.1.4 Ensure rsyslog is configured to send logs to a remote log host (Scored)

echo "*.* @@loghost.example.com" >> /etc/rsyslog.conf
echo "*.* @@loghost.example.com" >> /etc/rsyslog.d/21-cloudinit.conf  
echo "*.* @@loghost.example.com" >> /etc/rsyslog.d/iscsid-rsyslog.conf  
echo "*.* @@loghost.example.com" >> /etc/rsyslog.d/listen.conf
pkill -HUP rsyslogd

