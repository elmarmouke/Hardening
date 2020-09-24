#!/bin/sh
# ** AUTO GENERATED **

# 5.3.2 - Ensure lockout for failed password attempts is configured (Scored)

grep -E '^\s*auth\s+\S+\s+pam_(faillock|unix)\.so' /etc/pam.d/system-auth /etc/pam.d/password-auth | grep -E '/etc/pam.d/system-auth:auth        sufficient    pam_unix.so nullok try_first_pass' || exit $?
grep -E '^\s*auth\s+\S+\s+pam_(faillock|unix)\.so' /etc/pam.d/system-auth /etc/pam.d/password-auth | grep -E '/etc/pam.d/system-auth:auth required pam_faillock.so preauth audit silent deny=5 unlock_time=900' || exit $?
grep -E '^\s*auth\s+\S+\s+pam_(faillock|unix)\.so' /etc/pam.d/system-auth /etc/pam.d/password-auth | grep -E '/etc/pam.d/system-auth:auth \[default=die\] pam_faillock.so authfail audit deny=5 unlock_time=900' || exit $?
grep -E '^\s*auth\s+\S+\s+pam_(faillock|unix)\.so' /etc/pam.d/system-auth /etc/pam.d/password-auth | grep -E '/etc/pam.d/system-auth:auth sufficient pam_faillock.so authsucc audit deny=5 unlock_time=900' || exit $?
grep -E '^\s*auth\s+\S+\s+pam_(faillock|unix)\.so' /etc/pam.d/system-auth /etc/pam.d/password-auth | grep -E '/etc/pam.d/password-auth:auth        sufficient    pam_unix.so nullok try_first_pass' || exit $?
grep -E '^\s*auth\s+\S+\s+pam_(faillock|unix)\.so' /etc/pam.d/system-auth /etc/pam.d/password-auth | grep -E '/etc/pam.d/password-auth:auth required pam_faillock.so preauth silent audit deny=5 unlock_time=900' || exit $?
grep -E '^\s*auth\s+\S+\s+pam_(faillock|unix)\.so' /etc/pam.d/system-auth /etc/pam.d/password-auth | grep -E '/etc/pam.d/password-auth:auth required pam_faillock.so preauth audit silent deny=5 unlock_time=900' || exit $?
grep -E '^\s*auth\s+\S+\s+pam_(faillock|unix)\.so' /etc/pam.d/system-auth /etc/pam.d/password-auth | grep -E '/etc/pam.d/password-auth:auth \[default=die\] pam_faillock.so authfail audit deny=5 unlock_time=900' || exit $?

grep -E '^\s*account\s+required\s+pam_faillock.so\s*' /etc/pam.d/system-auth /etc/pam.d/password-auth | grep -E '/etc/pam.d/system-auth:account required pam_faillock.so' || exit $?
grep -E '^\s*account\s+required\s+pam_faillock.so\s*' /etc/pam.d/system-auth /etc/pam.d/password-auth | grep -E '/etc/pam.d/password-auth:account required pam_faillock.so' || exit $?




