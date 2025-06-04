#!/bin/bash

BASE_URL="https://raw.githubusercontent.com/johnb2923/Linux-Assignment/main"

curl -sL "${BASE_URL}/init_lab.sh" | sudo bash
curl -sL "${BASE_URL}/init_lab_r.sh" | sudo bash
curl -sL "${BASE_URL}/log_maintain.sh" | sudo bash
curl -sL "${BASE_URL}/user_audit.sh" | sudo bash
curl -sL "${BASE_URL}/health_check.sh" | sudo bash
