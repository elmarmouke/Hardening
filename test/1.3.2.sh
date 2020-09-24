#!/bin/sh
# ** AUTO GENERATED **

# 1.3.2 - Ensure filesystem integrity is regularly checked (Scored)

systemctl is-enabled aidecheck.service
systemctl is-enabled aidecheck.timer
systemctl status aidecheck.timer

