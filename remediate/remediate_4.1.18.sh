#!/bin/sh
# ** AUTO GENERATED **

# 4.1.18 - Ensure the audit configuration is immutable (Scored)

echo "-e 2" >> /etc/audit/rules.d/99-finalize.rules
service auditd restart
