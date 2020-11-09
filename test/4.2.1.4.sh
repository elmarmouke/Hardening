#!/bin/sh
# ** AUTO GENERATED **

# 4.2.1.4 - Ensure rsyslog is configured to send logs to a remote log host (Scored)

cat /etc/rsyslog.conf | grep -E "*.* @@loghost.example.com" 2>/dev/null || exit 1
