#!/bin/sh
# ** AUTO GENERATED **

# 4.2.4 - Ensure permissions on all logfiles are configured (Scored)

#vim /etc/default/grub.3


find /var/log -type f -exec chmod g-wx,o-rwx "{}" + -o -type d -exec chmod g-wx,o-rwx "{}" +
