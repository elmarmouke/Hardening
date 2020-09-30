#!/bin/sh

mv /var /var.old
mkdir /var
cp -apx /mnt/newvar/* /var
mv /home /home.old
mkdir /home
cp -apx /mnt/newhome/* /home

init 6