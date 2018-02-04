#!/usr/bin/env bash
# @author: Daniel Hand
# https://danielhand.io
# Created:   04/02/2018

DATE=`date "+%d-%m-%Y-%H:%M"`
HOSTS="10.50.3.1 rtr0.example.local"
USER=root
BACKUPPATH=/pfsense-backup


### Delete configuration files older than 30 days
find $BACKUPPATH -type f -name '*.xml' -mtime +30 -exec rm {} \;

for HOST in $HOSTS

do

### Copy config.xml from host with date and timestamp
scp $USER@$HOST:/cf/conf/config.xml $BACKUPPATH/$HOST-$DATE.xml

done
