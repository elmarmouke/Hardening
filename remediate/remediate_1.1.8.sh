#!/bin/bash 
cat /etc/fstab | grep /var/tmp 
if [[ $? -ne 0 ]]; then
  echo "/tmp /var/tmp.partition /tmp ext2 loop,noexec,nodev,nosuid,rw 0 0" >> /etc/fstab
else
  #sed 's/nosuid/nosuid,nodev' -i /etc/fstab
  sed '\|/var/tmp|d' -i /etc/fstab
  echo "/tmp /var/tmp.partition /tmp ext2 loop,noexec,nodev,nosuid,rw 0 0" >> /etc/fstab
fi
mount -o remount /tmp