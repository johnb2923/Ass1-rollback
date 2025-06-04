#!/bin/bash

USERS=("devops" "qa" "intern")

for user in "${USERS[@]}"; do
    userdel -r "$user"
done

groupdel engineering

if [ -d "/opt/logmanager" ]; then
    rm -rf "/opt/logmanager"
fi

if [ -d "/opt/archive_logs" ]; then
    rm -rf "/opt/archive_logs"
fi

if [ -f "/var/tmp/log_alerts.log" ]; then
    rm "/var/tmp/log_alerts.log"
fi

if [ -f "/var/log/health_check.log" ]; then
    true > "/var/log/health_check.log"
fi

