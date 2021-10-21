#!/bin/bash
clear
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
MYIP=$(wget -qO- ipinfo.io/ip);
IP=$(wget -qO- ipinfo.io/ip);
date=$(date +"%Y-%m-%d")
clear
echo -e "Autoscript By Vinstechmy"
echo -e ""
echo " Enter Your Email To Receive Message"
read -rp " Email: " -e email
sleep 1
echo " Create Backup Directory Begin, Please Wait .."
mkdir /root/backup
sleep 1
echo Start Backup
clear
cp /etc/passwd backup/
cp -r /etc/wireguard backup/wireguard
cp -r /var/lib/premium-script/ backup/premium-script
cp -r /etc/v2ray backup/v2ray
cp -r /etc/trojan backup/trojan
cp -r /etc/xray-mini backup/xray-mini
cp -r /home/vps/public_html backup/public_html
cd /root
zip -r $IP-$date.zip backup > /dev/null 2>&1
rclone copy /root/$IP-$date.zip dr:backup/
url=$(rclone link dr:backup/$IP-$date.zip)
id=(`echo $url | grep '^https' | cut -d'=' -f2`)
link="https://drive.google.com/u/4/uc?id=${id}&export=download"
echo -e "The following is a link to your vps data backup file.

Your VPS IP $IP

$link

If you want to restore data, please enter the link above.

Thank You For Using Our Services" | mail -s "Backup Data" $email
rm -rf /root/backup
rm -r /root/$IP-$date.zip
echo "Done"
echo "Please Check Your Email"
