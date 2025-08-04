#!/bin/bash
echo "==== Server Performance Stats ===="

echo -e "\n ---- CPU Usage ----"
top -bn1 | grep "Cpu(s)" | awk '{print "CPU Usage: " 100 - $8"%"}'

echo -e "\n ---- Memory Usage ----"
free | awk ' /^Mem:/ {
	used = $2 - $7;
	printf("Used Memory: %s\nFree Memory: %s\nUsage Percentage: (%.2f%%)\n", used, $7, (used/$2)*100)	
}'
