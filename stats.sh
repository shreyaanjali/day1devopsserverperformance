#!/bin/bash

#starting script to monitor linux environment 

echo "checking cpu usage"
mpstat
echo "checking memory usage"
du -h
echo "checking resource usage"
free
echo "checking top 5 processes of cpu usage"

ps -eo pid,comm,%cpu,%mem --sort=-%cpu| head -n 6