#!/bin/sh
# ** AUTO GENERATED **

# 1.5.1 - Ensure bootloader password is set (Scored)

grep "^\s*set superusers" /boot/grub2/grub.cfg || exit $?
grep "^\s*password" /boot/grub2/grub.cfg || exit $?

