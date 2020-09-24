#!/bin/bash 

# 5.4.1.2 - Ensure minimum days between password changes is 7 or more (Scored)

PMD=$(grep -E '^PASS_MIN_DAYS' /etc/login.defs | awk {'print $2'})

if [[ $PMD -eq '' || $PMD -lt 7 ]]; then
	NBR=$(grep -n -E '^PASS_MIN_DAYS' /etc/login.defs | cut -d : -f 1)
	sed "$NBR s/$PMD/7/" -i /etc/login.defs
fi

for i in $(egrep ^[^:]+:[^\!*] /etc/shadow | cut -d: -f1 ); do
	if [[ $i == root ]]; then 
	  echo $i
	else 
	  chage --mindays 7 $i
	fi
done