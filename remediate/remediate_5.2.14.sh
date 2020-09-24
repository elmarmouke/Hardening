#!/bin/bash 
sshd -T | grep 'banner /etc/issue.net' 
if [[ $? -ne 0 ]]; then
  echo 'banner /etc/issue.net' >> /etc/ssh/sshd_config
fi