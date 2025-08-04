#!/bin/bash
echo "==== Server Performance Stats ===="

#CPU Usage
echo -e "\n---- CPU Usage ----"
top -bn1 | grep "Cpu(s)" | awk '{print "CPU Usage: " 100 - $8"%"}'

#Memory Usage
echo -e "\n---- Memory Usage ----"
free | awk ' /^Mem:/ {
	used = $2 - $7;
	printf("Used Memory: %s\nFree Memory: %s\nUsage Percentage: (%.2f%%)\n", used, $7, (used/$2)*100)	
}'

#Disk Usage
echo -e "\n---- Disk Usage ----"
df -h --total | awk ' /^total/ {
	printf("Used disk space: %s\nFree disk space: %s\nTotal disk space: %s\nUsage Percentage: %s\n", $3, $4, $2, $5)
}'

#Top 5 CPU-consuming processes
echo -e "\n---- Top 5 Processes by CPU Usage ----"
ps -eo pid,comm,%cpu --sort=-%cpu | head -n 6

#Top 5 Memory consuming processes
echo -e "\n---- Top 5 Processes by Memory Usage ----"
ps -eo pid,comm,%mem --sort=-%mem | head -n 6

#OS version
echo -e "\n---- OS Version ----"
cat /etc/os-release | grep PRETTY_NAME | cut -d= -f2 | tr -d '"'

#Up time
echo -e "\n---- Uptime ----"
uptime -p

#Load Avarage
echo -e "\n---- Load Avarage ----"
uptime | awk -F'load average:' '{print $2}' | sed 's/^ //'
