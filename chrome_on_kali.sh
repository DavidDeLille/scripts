#!/bin/bash
# Creates a user chromeuser and then patches chrome to run as this user (with working audio).
# Run again if chrome stops working (usually after updating).

useradd -m chromeuser -g audio

apt-get update
apt-get install google-chrome
cd /opt/google/chrome 
cp google-chrome google-chrome-backup   # not strictly necessary
mv google-chrome google-chrome-orig
echo -n "gksu -u chromeuser google-chrome-orig" > google-chrome