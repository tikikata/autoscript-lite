#!/bin/bash
clear
red='\e[1;31m'
green='\e[0;32m'
purple='\e[0;35m'
orange='\e[0;33m'
blue='\e[94m'
NC='\e[0m'
ISP=$(curl -s ipinfo.io/org | cut -d " " -f 2-10 )
City=$(curl -s ipinfo.io/city )
WKT=$(curl -s ipinfo.io/timezone )
IPVPS=$(curl -s ipinfo.io/ip )
jam=$(date +"%T")
hari=$(date +"%A")
tnggl=$(date +"%d-%B-%Y")
domain=$(cat /etc/v2ray/domain)
echo -e ""
echo -e "\e[94m.-----------------------------------------------------."
echo -e "\e[94m|                 System-Information                  |"
echo -e "\e[94m'-----------------------------------------------------'"
echo -e "\e[0m"
echo -e "* TIME          : $jam"
echo -e "* DAY           : $hari"
echo -e "* DATE          : $tnggl"
echo -e "* SERVER        : $ISP"
echo -e "* CITY          : $City"
echo -e "* IP VPS        : $IPVPS"
echo -e "* DOMAIN        : $domain"
echo -e "* VERSION       : Autoscript-Lite By Vinstechmy"
echo -e ""
echo -e "\e[94m.-----------------------------------------------------."
echo -e "\e[94m|                   System-Status                     |"
echo -e "\e[94m'-----------------------------------------------------'"
echo -e "\e[0m"
status="$(systemctl show cron.service --no-page)"
status_text=$(echo "${status}" | grep 'ActiveState=' | cut -f2 -d=)
if [ "${status_text}" == "active" ]
then
echo -e " Cron				: "$green"Running"$NC""
else
echo -e " Cron				: "$red"Not Running (Error)"$NC""
fi

status="$(systemctl show ssh.service --no-page)"
status_text=$(echo "${status}" | grep 'ActiveState=' | cut -f2 -d=)
if [ "${status_text}" == "active" ]
then
echo -e " SSH				: "$green"Running"$NC""
else
echo -e " SSH				: "$red"Not Running (Error)"$NC""
fi

status="$(systemctl show stunnel4.service --no-page)"
status_text=$(echo "${status}" | grep 'ActiveState=' | cut -f2 -d=)
if [ "${status_text}" == "active" ]
then
echo -e " Stunnel			: "$green"Running"$NC""
else
echo -e " Stunnel			: "$red"Not Running (Error)"$NC""
fi

status="$(systemctl show squid.service --no-page)"
status_text=$(echo "${status}" | grep 'ActiveState=' | cut -f2 -d=)
if [ "${status_text}" == "active" ]
then
echo -e " Squid				: "$green"Running"$NC""
else
echo -e " Squid				: "$red"Not Running (Error)"$NC""
fi

status="$(systemctl show fail2ban.service --no-page)"
status_text=$(echo "${status}" | grep 'ActiveState=' | cut -f2 -d=)
if [ "${status_text}" == "active" ]
then
echo -e " Fail2ban			: "$green"Running"$NC""
else
echo -e " Fail2ban			: "$red"Not Running (Error)"$NC""
fi

status="$(systemctl show nginx.service --no-page)"
status_text=$(echo "${status}" | grep 'ActiveState=' | cut -f2 -d=)
if [ "${status_text}" == "active" ]
then
echo -e " Nginx				: "$green"Running"$NC""
else
echo -e " Nginx				: "$red"Not Running (Error)"$NC""
fi

status="$(systemctl show openvpn.service --no-page)"
status_text=$(echo "${status}" | grep 'ActiveState=' | cut -f2 -d=)
if [ "${status_text}" == "active" ]
then
echo -e " OpenVPN			: "$green"Running"$NC""
else
echo -e " OpenVPN			: "$red"Not Running (Error)"$NC""
fi

status="$(systemctl show dropbear.service --no-page)"
status_text=$(echo "${status}" | grep 'ActiveState=' | cut -f2 -d=)
if [ "${status_text}" == "active" ]
then
echo -e " DropBear			: "$green"Running"$NC""
else
echo -e " DropBear			: "$red"Not Running (Error)"$NC""
fi

status="$(systemctl show v2ray.service --no-page)"
status_text=$(echo "${status}" | grep 'ActiveState=' | cut -f2 -d=)
if [ "${status_text}" == "active" ]
then
echo -e " Vmess TLS			: "$green"Running"$NC""
else
echo -e " Vmess TLS			: "$red"Not Running (Error)"$NC""
fi

status="$(systemctl show v2ray@none.service --no-page)"
status_text=$(echo "${status}" | grep 'ActiveState=' | cut -f2 -d=)
if [ "${status_text}" == "active" ]
then
echo -e " Vmess Non-TLS			: "$green"Running"$NC""
else
echo -e " Vmess Non-TLS			: "$red"Not Running (Error)"$NC""
fi

status="$(systemctl show v2ray@vless.service --no-page)"
status_text=$(echo "${status}" | grep 'ActiveState=' | cut -f2 -d=)
if [ "${status_text}" == "active" ]
then
echo -e " Vless TLS			: "$green"Running"$NC""
else
echo -e " Vless TLS			: "$red"Not Running (Error)"$NC""
fi

status="$(systemctl show v2ray@vnone.service --no-page)"
status_text=$(echo "${status}" | grep 'ActiveState=' | cut -f2 -d=)
if [ "${status_text}" == "active" ]
then
echo -e " Vless Non-TLS			: "$green"Running"$NC""
else
echo -e " Vless Non-TLS			: "$red"Not Running (Error)"$NC""
fi

status="$(systemctl show xray-mini@vless-direct.service --no-page)"
status_text=$(echo "${status}" | grep 'ActiveState=' | cut -f2 -d=)
if [ "${status_text}" == "active" ]
then
echo -e " XRAY Vless XTLS Direct		: "$green"Running"$NC""
else
echo -e " XRAY Vless XTLS Direct		: "$red"Not Running (Error)"$NC""
fi

status="$(systemctl show xray-mini@vless-splice.service --no-page)"
status_text=$(echo "${status}" | grep 'ActiveState=' | cut -f2 -d=)
if [ "${status_text}" == "active" ]
then
echo -e " XRAY Vless XTLS Splice		: "$green"Running"$NC""
else
echo -e " XRAY Vless XTLS Splice		: "$green"Running"$NC""
fi

status="$(systemctl show trojan.service --no-page)"
status_text=$(echo "${status}" | grep 'ActiveState=' | cut -f2 -d=)
if [ "${status_text}" == "active" ]
then
echo -e " Trojan				: "$green"Running"$NC""
else
echo -e " Trojan				: "$red"Not Running (Error)"$NC""
fi

status="$(systemctl show wg-quick@wg0.service --no-page)"
status_text=$(echo "${status}" | grep 'ActiveState=' | cut -f2 -d=)
if [ "${status_text}" == "active" ]
then
echo -e " Wireguard			: "$green"Running"$NC""
else
echo -e " Wireguard			: "$red"Not Running (Error)"$NC""
fi

echo ""
echo -e "\e[94m.-----------------------------------------------------."
echo -e "\e[94m|                   Dashboard-Menu                    |"
echo -e "\e[94m'-----------------------------------------------------'"
echo -e "\e[0m"
echo -e "  \e[1;31m1)\e[0m \e[1;32m: SSH & OVPN Panel\e[0m"
echo -e "  \e[1;31m2)\e[0m \e[1;32m: Wireguard Panel\e[0m"
echo -e "  \e[1;31m3)\e[0m \e[1;32m: Vmess Websocket Panel\e[0m"
echo -e "  \e[1;31m4)\e[0m \e[1;32m: Vless Websocket Panel\e[0m"
echo -e "  \e[1;31m5)\e[0m \e[1;32m: XRay Vless Panel\e[0m"
echo -e "  \e[1;31m6)\e[0m \e[1;32m: Trojan Panel\e[0m"
echo -e ""
echo -e "\e[94m.-----------------------------------------------------."
echo -e "\e[94m|                    System-Menu                      |"
echo -e "\e[94m'-----------------------------------------------------'"
echo -e "\e[0m"
echo -e "  \e[1;31m7)\e[0m \e[1;32m: Add Or Change Domain\e[0m"
echo -e "  \e[1;31m8)\e[0m \e[1;32m: Renew Domain Certificate\e[0m"
echo -e "  \e[1;31m9)\e[0m \e[1;32m: Change VPN Port\e[0m"
echo -e "  \e[1;31m10)\e[0m \e[1;32m: Check VPN Status\e[0m"
echo -e " \e[1;31m11)\e[0m \e[1;32m: Restart VPN Services\e[0m"
echo -e " \e[1;31m12)\e[0m \e[1;32m: Autobackup VPS Data\e[0m"
echo -e " \e[1;31m13)\e[0m \e[1;32m: Backup VPS Data\e[0m"
echo -e " \e[1;31m14)\e[0m \e[1;32m: Restore VPS Data\e[0m"
echo -e " \e[1;31m15)\e[0m \e[1;32m: Check Ram Usage\e[0m"
echo -e " \e[1;31m16)\e[0m \e[1;32m: Reboot VPS\e[0m"
echo -e " \e[1;31m17)\e[0m \e[1;32m: Speedtest VPS Server\e[0m"
echo -e " \e[1;31m18)\e[0m \e[1;32m: Update Autoscript\e[0m"
echo -e " \e[1;31m19)\e[0m \e[1;32m: Check VPN Port\e[0m"
echo -e " \e[1;31m20)\e[0m \e[1;32m: Autoscript Info\e[0m"
echo -e " \e[1;31m21)\e[0m \e[1;32m: Exit From Autoscript\e[0m"
echo -e ""
read -p " Select From Options [1-21 or x]: " menu
case $menu in
1)
menu-ssh
echo ""
read -n1 -r -p "Press any key to continue..."
menu
;;
2)
menu-wg
echo ""
read -n1 -r -p "Press any key to continue..."
menu
;;
3)
menu-vmess
echo ""
read -n1 -r -p "Press any key to continue..."
menu
;;
4)
menu-vless
echo ""
read -n1 -r -p "Press any key to continue..."
menu 
;;
5)
menu-xray
echo ""
read -n1 -r -p "Press any key to continue..."
menu
;;
6)
menu-trojan
echo ""
read -n1 -r -p "Press any key to continue..."
menu
;;
7)
add-host
echo ""
read -n1 -r -p "Press any key to continue..."
menu
;;
8)
certv2ray
echo ""
read -n1 -r -p "Press any key to continue..."
menu
;;
9)
change-port
echo ""
read -n1 -r -p "Press any key to continue..."
menu
;;
10)
status
echo ""
read -n1 -r -p "Press any key to continue..."
menu
;;
11)
restart
echo ""
read -n1 -r -p "Press any key to continue..."
menu
;;
12)
autobackup
echo ""
read -n1 -r -p "Press any key to continue..."
menu
;;
13)
backup
echo ""
read -n1 -r -p "Press any key to continue..."
menu
;;
14)
restore
echo ""
read -n1 -r -p "Press any key to continue..."
menu
;;
15)
ram
echo ""
read -n1 -r -p "Press any key to continue..."
menu
;;
16)
reboot
;;
17)
speedtest
echo ""
read -n1 -r -p "Press any key to continue..."
menu
;;
18)
update
echo ""
read -n1 -r -p "Press any key to continue..."
menu
;;
19)
info
echo ""
read -n1 -r -p "Press any key to continue..."
menu
;;
20)
about
echo ""
read -n1 -r -p "Press any key to continue..."
menu
;;
21)
exit
;;
x)
exit
;;
*)
echo -e "${Error}Please enter the correct number [1-21] "
echo ""
read -n1 -r -p "Press any key to continue..."
menu
;;
esac
