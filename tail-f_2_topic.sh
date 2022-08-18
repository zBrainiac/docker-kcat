#!/bin/sh
tail -f /var/log/generated.log | kcat -b kafka:9092 -t syslog -P