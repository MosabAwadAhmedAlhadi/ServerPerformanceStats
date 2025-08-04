#!/bin/bash
echo "==== Server Performance Stats ===="

echo -e "\n ---- CPU Usage ---"
top -bn1 | grep "Cpu(s)" | awk '{print "CPU Usage: " 100 - $8"%"}'
