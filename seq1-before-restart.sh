#!/bin/sh

sudo yum install git 
git clone https://github.com/elmarmouke/Hardening.git


echo -e "o\nn\np\n1\n\n\nt\n8e\nw" | fdisk /dev/sdc
partprobe /dev/sdc
pvcreate /dev/sdc1
vgcreate vg1 /dev/sdc1
lvcreate --size 4G --name lv-home vg1
mkfs.ext4 /dev/vg1/lv-home
lvcreate --size 4G --name lv-var vg1
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

echo "/dev/vg1/lv-home /mnt/newhome ext4 rw,nodev,relatime 0 0" >> /etc/fstab
echo "/dev/vg1/lv-var /var ext4 rw,relatime 0 0" >> /etc/fstab
echo "/dev/vg1/lv-var-tmp /var/tmp ext4 rw,nosuid,nodev,noexec,relatime 0 0" >> /etc/fstab
echo "/dev/vg1/lv-var-log /var/log ext4 defaults 0 0" >> /etc/fstab
echo "/dev/vg1/lv-var-log-audit /var/log/audit ext4 defaults 0 0" >> /etc/fstab
echo "/dev/vg1/lv-tmp /tmp ext4 rw,nodev,nosuid,noexec 0 0" >> /etc/fstab
echo "/dev/vg1/lv-shm /dev/shm ext4 rw,nosuid,nodev,noexec,relatime 0 0" >> /etc/fstab
echo "/dev/vg1/lv-media /media ext4 rw,nosuid,nodev,noexec,relatime 0 0" >> /etc/fstab

mkdir /mnt/newvar /mnt/newhome
mount /dev/vg1/lv-var /mnt/newvar
cp -apx /var/* /mnt/newvar
mount /dev/vg1/lv-home /mnt/newhome
cp -apx /home/* /mnt/newhome
init 1
