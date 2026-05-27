#!/bin/env bash 

get_total_cpu_usage() {
        local idle
        idle=$(top -bn1 | grep -i "Cpu(s)" | awk '{print $8}' 2>/dev/null)
        if [[ -n "$idle" ]]; then
            echo "$(awk -v idle="$idle" 'BEGIN {printf "%.2f%%", 100 - idle}')"
        else
            echo "N/A"
        fi	
}

while (true)
do
	clear
	echo "====== Server Performance Stats ======"
	echo "Date: $(date)"
	echo -e "\n"
	echo -e "CPU usage: \nLoad average: $(uptime | cut -d: -f5)\nTotal:$(get_total_cpu_usage)"
	echo -e "\n"
	echo -e "Memory usage: \n$(free | grep "Mem:" -w | awk '{printf "Total: %.1fGi\nUsed: %.1fGi (%.2f%%)\nFree: %.1fGi (%.2f%%)\n",$2/1024^2, $3/1024^2, $3/$2 * 100, $4/1024^2, $4/$2 * 100}')"
	echo -e "\n"
	echo    "Disk usage:"
	df -h | grep "/" -w | awk '{printf "Total: %sG\nUsed: %s (%.2f%%)\nFree: %s (%.2f%%)\n",$3 + $4, $3, $3/($3+$4) * 100, $4, $4/($3+$4) * 100}'
	echo -e "\n"
	echo    "Top 5 mem usage:"
	ps aux --sort -%mem | head -n 6 | awk '{print $1 "\t" $2 "\t" $4 "\t" $11}'
	echo -e "\n"
	echo    "Top 5 CPU usage:"
	ps aux --sort -%cpu | head -n 6 | awk '{print $1 "\t" $2 "\t" $3 "\t" $11}'
	echo "====== Server Performance Stats ======"
	sleep 10
done
