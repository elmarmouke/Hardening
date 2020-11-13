#!/bin/sh
# ** AUTO GENERATED **

# 2.2.15 - Ensure mail transfer agent is configured for local-only mode (Scored)

ss -lntu | grep -E ':25\s' | grep -E -v '\s(127.0.0.1|\[?::1\]?):25\s' || exit 0
