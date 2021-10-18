#!/bin/bash
clear
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
MYIP=$(wget -qO- ipinfo.io/ip);
echo -e "Autoscript By Vinstechmy"
echo -e ""
uuid=$(cat /etc/trojan-go/uuid.txt)
source /var/lib/premium-script/ipvps.conf
if [[ "$IP" = "" ]]; then
domain=$(cat /etc/v2ray/domain)
else
domain=$IP
fi
trojango="$(cat ~/log-install.txt | grep -i Trojan-Go | cut -d: -f2|sed 's/ //g')"
until [[ $user =~ ^[a-zA-Z0-9_]+$ && ${user_EXISTS} == '0' ]]; do
		read -rp "User : " -e user
		user_EXISTS=$(grep -w $user /etc/trojan-go/akun.conf | wc -l)

		if [[ ${user_EXISTS} == '1' ]]; then
			echo ""
			echo "A client with the specified name was already created, please choose another name."
			exit 1
		fi
	done
read -p "Expired (days) : " masaaktif
sed -i '/"'""$uuid""'"$/a\,"'""$user""'"' /etc/trojan-go/config.json
exp=`date -d "$masaaktif days" +"%Y-%m-%d"`
echo -e "### $user $exp" >> /etc/trojan-go/akun.conf
systemctl restart trojan-go.service
trojangolink="trojan-go://${uuid}@${domain}:${trojango}/?sni=${domain}&type=ws&host=${domain}&path=/vinstechmy&encryption=none#${user}"
clear
echo -e ""
echo -e "=============-Trojan-Go-============"
echo -e "Remarks        : ${user}"
echo -e "Host/IP        : ${domain}"
echo -e "Port           : ${trojango}"
echo -e "Path           : /vinstechmy"
echo -e "Password       : ${uuid}"
echo -e "================================="
echo -e "Link Trojan-go : ${trojangolink}"
echo -e "================================="
echo -e "Expired On     : $exp"
echo -e ""
echo -e "Autoscript By Vinstechmy"
