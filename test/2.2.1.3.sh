#!/bin/sh
# ** AUTO GENERATED **

# Ensure chrony is configured (Scored)

grep -E "^(server|pool)" /etc/chrony.conf || exit $?
grep ^OPTIONS /etc/sysconfig/chronyd || exit $?

