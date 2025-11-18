#!/bin/bash

##Author Name: Nirmal Shanker
##Author email: nirmal.elex@gmail.com
##Date: 18/11/2025
##This shell script is for system  cpu/memory check and alert if values cross defined threshold



#set -x

#set -e

#set -o pipefail


##CPU_Variables

CPU_THRESHOLD=80

CPU_USAGE=$(top -bn1 | grep "%Cpu(s)" | awk '{print $2 + $4}')



##CPU check

if (( $(echo "$CPU_USAGE >= $CPU_THRESHOLD" | bc -l) )); then

     echo "System CPU_Usage: $CPU_USAGE is at high load so sending alert to =>nirmal.elex@gmail.com"
     echo "Hi Nirmal ,Currently CPU load crossed at defined threshold value:$CPU_THRESHOLD and current value is $CPU_USAGE,kindly check the server" | mail -s "CPU_Usage: $CPU_USAGE" nirmal.elex@gmail.com
     
else
   echo "System is running normally under defined threshold and current value cpu usage is :$CPU_USAGE"
   echo "Thanks .....No need intervention"

fi




##Memory_Variables

MEMORY_THRESHOLD=80


Memory_Usage=$(free -h | grep Mem | awk '{print $3/$2}')

#Memory_Check

if (( $(echo "$Memory_Usage >= $MEMORY_THRESHOLD" | bc -l) )); then

  echo "System Memory_Usage: $Memory_Usage is at high memory consuption so sending alert to =>nirmal.elex@gmail.com"
     echo "Hi Nirmal ,Currently Memory_Usage crossed at defined threshold value:$MEMORY_THRESHOLD $Memory_Usage,kindly check the server" | mail -s "Memory_Usage: $Memory_Usage" nirmal.elex@gmail.com
else
   echo "System is running normally under defined threshold memory and current memory usage is :"$Memory_Usage"%"
   echo "Thanks .....No need intervention"
fi


