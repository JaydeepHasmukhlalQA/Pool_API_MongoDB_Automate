#!/bin/bash

CYAN="\033[0;36"
GREEN="\033[0;32m"
DEFULT="\e[39mDefault"

echo -e "${CYAN}Installing MongoDB.${DEFULT}"
sudo apt-get install -y mongodb
echo -e "${GREEN}Finished updating.${DEFULT}"

echo -e "${CYAN}Opening IP's of MongoDB.${DEFULT}"
sed -i "/bind_ip = 127.0.0.1/c\bind_ip = 0.0.0.0" /etc/mongodb.conf
sed -i "/#port = 27017/c\port = 27017" /etc/mongodb.conf
echo -e "${CYAN}Done.${DEFULT}"

echo -e "${CYAN}Starting MongoDB.${DEFULT}"
sudo systemctl restart MongoDB
echo -e "${CYAN}Started MongoDB.${DEFULT}"
