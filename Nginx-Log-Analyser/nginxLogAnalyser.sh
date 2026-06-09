#!/bin/env bash

LOGFILE=$1

[[ $LOGFILE ]] || { echo "No file or no argument.";exit 1; }


echo "Top 5 IP addresses with the most requests:"
awk '{print $1}' $LOGFILE | uniq -c | sort -nr | head -n5
echo -e "\nTop 5 most requested paths:"
awk '{print $7}' $LOGFILE | sort | uniq -c | sort -nr | head -n5
echo -e "\nTop 5 response status codes:"
awk '{print $9}' $LOGFILE | sort | uniq -c | sort -nr | head -n5
echo -e "\nTop 5 user agents:"
awk -F'"' '{print $6}' $LOGFILE | sort | uniq -c | sort -nr | head -n5
