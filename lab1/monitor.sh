#! /bin/bash
## task3
# Write a script to be executed every 1 min to monitor system load, and add it to file /var/log/system-load

#check if script is being run by root
[ $EUID -ne 0 ] && echo "not run by root"&& exit 1

# Get Current Date
Date=$(date +"%Y-%m-%d %H:%M:%S")

# Get the system load Avg 
Load=$(uptime | awk '{print $10}')
 

# Append the load and date to the system-load log file

echo "$Date - System load: $Load" >> /var/log/system-load
