#!/bin/sh

#remediate CIS

cd /etc/Hardening/remediate

#Ajout de Rabih************
restorecon -vr /var/log/audit
service auditd restart
#**************************

bash ./remediate_1.1.1.1.sh
bash ./remediate_1.1.1.3.sh
bash ./remediate_1.1.1.6.sh
bash ./remediate_1.1.1.7.sh
bash ./remediate_1.1.21.sh
bash ./remediate_1.3.1.sh
bash ./remediate_1.3.2.sh
bash ./remediate_1.4.1.sh
bash ./remediate_1.4.2.sh
bash ./remediate_1.8.sh
bash ./remediate_2.2.7.sh
bash ./remediate_3.1.2.sh
bash ./remediate_3.2.2.sh
bash ./remediate_3.2.3.sh
bash ./remediate_3.2.4.sh
bash ./remediate_3.6.3.sh
bash ./remediate_3.6.4.sh
bash ./remediate_4.1.1.2.sh
bash ./remediate_4.1.1.3.sh
bash ./remediate_4.1.3.sh
bash ./remediate_4.1.4.sh
bash ./remediate_4.1.5.sh
bash ./remediate_4.1.6.sh
bash ./remediate_4.1.7.sh
bash ./remediate_4.1.8.sh
bash ./remediate_4.1.9.sh
bash ./remediate_4.1.10.sh
bash ./remediate_4.1.11.sh
bash ./remediate_4.1.12.sh
bash ./remediate_4.1.13.sh
bash ./remediate_4.1.14.sh
bash ./remediate_4.1.15.sh
bash ./remediate_4.1.16.sh
bash ./remediate_4.1.17.sh
bash ./remediate_4.1.18.sh
bash ./remediate_4.2.1.4.sh
bash ./remediate_4.2.2.3.sh
bash ./remediate_5.1.2.sh
bash ./remediate_5.1.3.sh
bash ./remediate_5.1.4.sh
bash ./remediate_5.1.5.sh
bash ./remediate_5.1.6.sh
bash ./remediate_5.1.7.sh
bash ./remediate_5.1.8.sh
bash ./remediate_5.2.1.sh
bash ./remediate_5.2.2.sh
bash ./remediate_5.2.3.sh
bash ./remediate_5.2.4.sh
bash ./remediate_5.2.5.sh
bash ./remediate_5.2.6.sh
bash ./remediate_5.2.7.sh
bash ./remediate_5.2.8.sh
bash ./remediate_5.2.9.sh
bash ./remediate_5.2.10.sh
bash ./remediate_5.2.11.sh
bash ./remediate_5.2.12.sh
bash ./remediate_5.2.1.sh
bash ./remediate_5.2.13.sh
bash ./remediate_5.2.14.sh
bash ./remediate_5.2.15.sh
bash ./remediate_5.3.1.sh
bash ./remediate_5.3.2.sh
bash ./remediate_5.3.3.sh
bash ./remediate_5.4.1.1.sh
bash ./remediate_5.4.1.2.sh
bash ./remediate_5.4.4.sh
bash ./remediate_5.4.5.sh
bash ./remediate_5.6.sh
bash ./remediate_5.3.3.sh
bash ./remediate_5.4.1.1.sh
bash ./remediate_5.4.1.2.sh
bash ./remediate_5.6.sh
#reboot
