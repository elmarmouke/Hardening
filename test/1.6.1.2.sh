#!/bin/sh
# ** AUTO GENERATED **

# 1.6.1.2 - Ensure the SELinux state is enforcing (Scored)

getenforce | grep -E 'Enforcing|Permissive'
grep -Ei '^\s*SELINUX=(enforcing|permissive)' /etc/selinux/config
