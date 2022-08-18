#!/bin/sh
echo "Hello world" | kcat -b kafka:9092 -t mytopic