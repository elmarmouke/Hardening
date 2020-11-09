#!/bin/bash 

# 4.1.3 - Ensure auditing for processes that start prior to auditd is enabled (Scored)

cat /boot/grub2/grub.cfg | grep GRUB_CMDLINE_LINUX=\"audit=1\"
