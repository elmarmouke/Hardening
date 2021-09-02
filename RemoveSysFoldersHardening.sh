#!/bin/sh

init 1

cp -apx /var/* /var.old
mount /dev/vg1/lv-var /var.old
mount /dev/vg1/lv-home /home.old
sed '\|/dev/vg1/lv-var|d' -i /etc/fstab
sed '\|/dev/vg1/lv-home|d' -i /etc/fstab

init 6

lvremove /dev/vg1/lv-var-log
lvremove /dev/vg1/lv-var-log-audit
lvremove /dev/vg1/lv-var-log-tmp
lvremove /dev/vg1/lv-var-tmp
