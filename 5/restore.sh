#!/bin/bash
clear
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
MYIP=$(wget -qO- ipinfo.io/ip);
echo -e "Autoscript By Vinstechmy"
echo -e ""
echo "This Feature Can Only Be Used According To Vps Data With This Autoscript"
echo "Please input link to your vps data backup file."
echo "You can check it on your email if you run backup data vps before."
read -rp "Link File: " -e url
wget -O backup.zip "$url"
unzip backup.zip
rm -f backup.zip
sleep 1
echo Start Restore
cd /root/backup
cp passwd /etc/
cp -r wireguard /etc/
cp -r premium-script /var/lib/
cp -r trojan /etc/
cp -r v2ray /etc/
cp -r xray-mini /etc/
cp -r public_html /home/vps/
rm -rf /root/backup
rm -f backup.zip
echo Done
