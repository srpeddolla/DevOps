#Date: 18/08/2024
#Author: Shashidhar

# This script outputs the node health

#Version: v1

set -x #debug mode
set -e #exit the script when there is an error
set -o #pipefail

df -h

free -g

nproc

ps -ef | grep ubuntu | awk -F" " '{print $2}'