#!/bin/sh

mkdir /mnt/newvar
mount /dev/vg1/lv-var /mnt/newvar
cp -apx /var/* /mnt/newvar
mv /var /var.old
mkdir /var
cp -apx /mnt/newvar/* /var
#rsync -aqxP /mnt/newvar/* /var
 
umount /dev/vg1/lv-var
mount /dev/vg1/lv-var /var

#echo "/dev/vg1/lv-home /home ext4 rw,nodev,relatime 0 0" >> /etc/fstab
echo "/dev/vg1/lv-var /var ext4 rw,relatime 0 0" >> /etc/fstab
sed '\|/var/tmp|d' -i /etc/fstab
echo "/dev/vg1/lv-var-tmp /var/tmp ext4 rw,nosuid,nodev,noexec,relatime 0 0" >> /etc/fstab
echo "/dev/vg1/lv-var-log /var/log ext4 defaults 0 0" >> /etc/fstab
echo "/dev/vg1/lv-var-log-audit /var/log/audit ext4 defaults 0 0" >> /etc/fstab
echo "/dev/vg1/lv-tmp /tmp ext4 rw,nodev,nosuid,noexec 0 0" >> /etc/fstab

#init 6
