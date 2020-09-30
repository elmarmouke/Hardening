#!/bin/sh

mv /var /var.old
mkdir /var
cp -apx /mnt/newvar/* /var
mv /home /home.old
mkdir /home
cp -apx /home.old/* /home

echo "/dev/vg1/lv-home /mnt/newhome ext4 rw,nodev,relatime 0 0" >> /etc/fstab
echo "/dev/vg1/lv-var /var ext4 rw,relatime 0 0" >> /etc/fstab
echo "/dev/vg1/lv-var-tmp /var/tmp ext4 rw,nosuid,nodev,noexec,relatime 0 0" >> /etc/fstab
echo "/dev/vg1/lv-var-log /var/log ext4 defaults 0 0" >> /etc/fstab
echo "/dev/vg1/lv-var-log-audit /var/log/audit ext4 defaults 0 0" >> /etc/fstab
echo "/dev/vg1/lv-tmp /tmp ext4 rw,nodev,nosuid,noexec 0 0" >> /etc/fstab
echo "/dev/vg1/lv-shm /dev/shm ext4 rw,nosuid,nodev,noexec,relatime 0 0" >> /etc/fstab
echo "/dev/vg1/lv-media /media ext4 rw,nosuid,nodev,noexec,relatime 0 0" >> /etc/fstab

init 6
