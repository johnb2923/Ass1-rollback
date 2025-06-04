#!/bin/bash

USERS=("devops" "qa" "intern")

for user in "${USERS[@]}"; do
    userdel -r "$user"
done

groupdel engineering

