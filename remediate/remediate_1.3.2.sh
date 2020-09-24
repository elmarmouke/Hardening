#!/bin/bash 
#1.3.2 Ensure filesystem integrity is regularly checked (Scored)
cat /etc/systemd/system/aidecheck.service | grep -E 'Aide Check'
if [[ $? -ne 0 ]]; then
  touch /etc/systemd/system/aidecheck.service
  echo '[Unit]' >> /etc/systemd/system/aidecheck.service
  echo 'Description=Aide Check' >> /etc/systemd/system/aidecheck.service
  echo '[Service]' >> /etc/systemd/system/aidecheck.service
  echo 'Type=simple' >> /etc/systemd/system/aidecheck.service
  echo 'ExecStart=/usr/sbin/aide --check' >> /etc/systemd/system/aidecheck.service
  echo '[Install]' >> /etc/systemd/system/aidecheck.service
  echo 'WantedBy=multi-user.target' >> /etc/systemd/system/aidecheck.service
fi

cat /etc/systemd/system/aidecheck.timer | grep -E 'Aide check'
if [[ $? -ne 0 ]]; then
  touch /etc/systemd/system/aidecheck.timer
  echo '[Unit]' >> /etc/systemd/system/aidecheck.timer
  echo 'Description=Aide check every day at 5AM' >> /etc/systemd/system/aidecheck.timer
  echo '[Timer]' >> /etc/systemd/system/aidecheck.timer
  echo 'OnCalendar=*-*-* 05:00:00' >> /etc/systemd/system/aidecheck.timer
  echo 'Unit=aidecheck.service' >> /etc/systemd/system/aidecheck.timer
  echo '[Install]' >> /etc/systemd/system/aidecheck.timer
  echo 'WantedBy=multi-user.target' >> /etc/systemd/system/aidecheck.timer
fi

chown root:root /etc/systemd/system/aidecheck.*
chmod 0644 /etc/systemd/system/aidecheck.*
systemctl daemon-reload
systemctl enable aidecheck.service
systemctl --now enable aidecheck.timer