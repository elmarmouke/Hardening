#!/bin/sh

echo -e "o\nn\np\n1\n\n\nt\n8e\nw" | fdisk /dev/sdb
partprobe /dev/sdb

pvcreate /dev/sdb1
vgcreate vg1 /dev/sdb1
lvcreate --size 8G --name lv-home vg1
mkfs.ext4 /dev/vg1/lv-home
lvcreate --size 8G --name lv-var vg1
mkfs.ext4 /dev/vg1/lv-var
lvcreate --size 4G --name lv-var-tmp vg1
mkfs.ext4 /dev/vg1/lv-var-tmp
lvcreate --size 4G --name lv-var-log vg1
mkfs.ext4 /dev/vg1/lv-var-log
lvcreate --size 4G --name lv-var-log-audit vg1
mkfs.ext4 /dev/vg1/lv-var-log-audit
lvcreate --size 4G --name lv-tmp vg1
mkfs.ext4 /dev/vg1/lv-tmp
lvcreate --size 4G --name lv-shm vg1
mkfs.ext4 /dev/vg1/lv-shm
lvcreate --size 4G --name lv-media vg1
mkfs.ext4 /dev/vg1/lv-media

#Move home directory
mount /dev/mapper/vg1-lv--home /mnt
cd /mnt/
#rm -rf lost+found
cp -arp /home/* /mnt/
mv /home /home.old
mkdir /home
cd /
umount /dev/mapper/vg1-lv--home
mount /dev/mapper/vg1-lv--home /home
echo "/dev/vg1/lv-home /home ext4 rw,nodev,relatime 0 0" >> /etc/fstab

#Prepare to move var directory


init 1
