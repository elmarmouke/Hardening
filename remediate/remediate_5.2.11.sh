#!/bin/sh
# ** AUTO GENERATED **

# 5.2.11 - Ensure only approved MAC algorithms are used (Scored)

MACs=$(grep "MACs" /etc/ssh/sshd_config  | awk {'print $2'})

if [[ -z $MACs ]]; then
        echo "MACs hmac-sha2-512-etm@openssh.com,hmac-sha2-256-etm@openssh.com,hmac-sha2-512,hmac-sha2-256" >> /etc/ssh/sshd_config
else
	sed '\|MACs|d' -i /etc/ssh/sshd_config
	echo "MACs hmac-sha2-512-etm@openssh.com,hmac-sha2-256-etm@openssh.com,hmac-sha2-512,hmac-sha2-256" >> /etc/ssh/sshd_config
fi