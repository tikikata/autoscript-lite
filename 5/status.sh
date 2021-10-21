#!/bin/bash
clear
red='\e[1;31m'
green='\e[0;32m'
purple='\e[0;35m'
orange='\e[0;33m'
NC='\e[0m'
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
read -n1 -r -p " Press any key to continue..."
menu
echo ""