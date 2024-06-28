#!/bin/bash

# IIT Bombay SSO Login Script
# This script automates the process of logging into the IIT Bombay SSO system.

# Replace these placeholders with your actual LDAP credentials.
UNAME="YOUR_LDAP_USERNAME"
PASSWD="YOUR_SSO_ACCESS_TOKEN"

# Check DNS resolution to determine network connectivity.
nslookup bing.com 10.200.1.11 > /dev/null

# Check internet connectivity by attempting to access Google.
if curl -s -m 4 google.com > /dev/null; then
    echo "Already Logged In"
    exit 0
fi

# Perform SSO login.
curl --location-trusted -u "$UNAME:$PASSWD" https://internet-sso.iitb.ac.in/login.php

echo "Logged In Successfully"
