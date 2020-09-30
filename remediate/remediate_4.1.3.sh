#!/bin/bash 

# 4.1.3 - Ensure auditing for processes that start prior to auditd is enabled (Scored)

cat /boot/grub2/grub.cfg | grep GRUB_CMDLINE_LINUX= 
if [[ $? -ne 0 ]]; then
  echo "GRUB_CMDLINE_LINUX="audit=1" >> /boot/grub2/grub.cfg
  grub2-mkconfig -o /boot/grub2/grub.cfg
else
  sed '\|GRUB_CMDLINE_LINUX|d' -i /boot/grub2/grub.cfg
  echo "GRUB_CMDLINE_LINUX="audit=1" >> /boot/grub2/grub.cfg
fi