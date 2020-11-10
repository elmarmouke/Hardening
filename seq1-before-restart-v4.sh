#!/bin/sh

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

#Move home directory
mkdir /mnt2
mount /dev/mapper/vg1-lv--home /mnt2
cd /mnt2/
rm -rf lost+found
cp -rp /home/* /mnt2/
mv /home /home.old
mkdir /home
umount /dev/mapper/vg1-lv--home
mount /dev/mapper/vg1-lv--home /home
echo "/dev/vg1/lv-home /home ext4 rw,nodev,relatime 0 0" >> /etc/fstab

#Prepare to move var directory
mkdir /mnt2/newvar
mount /dev/vg1/lv-var /mnt2/newvar
cp -apx /var/* /mnt2/newvar

init 1
