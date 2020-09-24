#!/bin/bash 
cat /etc/sysconfig/chronyd | grep -E 'OPTIONS="-u chrony"'
if [[ $? -ne 0 ]]; then
  cat /etc/sysconfig/chronyd | grep -E 'OPTIONS=""'
  if [[ $? -ne 0 ]]; then
    echo 'OPTIONS="-u chrony"' >> /etc/sysconfig/chronyd
  else
    sed '\|OPTIONS=|d' -i /etc/sysconfig/chronyd
    echo 'OPTIONS="-u chrony"' >> /etc/sysconfig/chronyd
  fi
fi