#!/bin/bash
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
MYIP=$(wget -qO- ifconfig.co);
echo "Autoscript By Vinstechmy"
echo ""
echo start
sleep 0.5
source /var/lib/premium-script/ipvps.conf
domain=$IP
systemctl stop v2ray
systemctl stop v2ray@none
systemctl stop v2ray@vless
systemctl stop v2ray@vnone
systemctl stop trojan
systemctl stop xray-mini@vless-direct
systemctl stop xray-mini@vless-splice
/root/.acme.sh/acme.sh --issue -d $domain --standalone -k ec-256
~/.acme.sh/acme.sh --installcert -d $domain --fullchainpath /etc/v2ray/v2ray.crt --keypath /etc/v2ray/v2ray.key --ecc
systemctl start v2ray
systemctl start v2ray@none
systemctl start v2ray@vless
systemctl start v2ray@vnone
systemctl start trojan
systemctl start xray-mini@vless-direct
systemctl start xray-mini@vless-splice
/root/.acme.sh/acme.sh --i
echo Done
sleep 0.5
clear 
neofetch
