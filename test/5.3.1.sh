#!/bin/sh
# ** AUTO GENERATED **

# 5.3.1 - Ensure password creation requirements are configured (Scored)

grep '^\s*minlen\s*' /etc/security/pwquality.conf || exit $1
grep '^\s*minclass\s*' /etc/security/pwquality.conf || exit $1
#grep -E '^\s*[duol]credit\s*' /etc/security/pwquality.conf || exit $1
grep -P '^\s*password\s+(?:requisite|required)\s+pam_pwquality\.so\s+(?:\S+\s+)*(?!\2)(retry=[1-3]|try_first_pass)\s+(?:\S+\s+)*(?!\1)(retry=[1-3]|try_first_pass)\s*(?:\s+\S+\s*)*(?:\s+#.*)?$' /etc/pam.d/password-auth || exit $1
grep -P '^\s*password\s+(?:requisite|required)\s+pam_pwquality\.so\s+(?:\S+\s+)*(?!\2)(retry=[1-3]|try_first_pass)\s+(?:\S+\s+)*(?!\1)(retry=[1-3]|try_first_pass)\s*(?:\s+\S+\s*)*(?:\s+#.*)?$' /etc/pam.d/system-auth || exit $1

