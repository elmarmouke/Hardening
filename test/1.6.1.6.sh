#!/bin/sh
# ** AUTO GENERATED **

# 1.6.1.6 - Ensure no unconfined daemons exist (Scored)

ps -eZ | grep unconfined_service_t || exit 0