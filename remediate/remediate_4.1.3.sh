#!/bin/sh
# ** AUTO GENERATED **

# 4.1.3 - Ensure auditing for processes that start prior to auditd is enabled (Scored)

#vim /etc/default/grub.3


1-si GRUB_CMDLINE_LINUX= existe
2-chercher "audit=1" dans le resultat
3-si "audit=1" non existe alors ajouter "audit=1" a la fin de la ligne
4- else ajouter GRUB_CMDLINE_LINUX="audit=1"
5- grub2-mkconfig -o /boot/grub2/grub.cfg
