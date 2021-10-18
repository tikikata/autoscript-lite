#!/bin/bash
clear
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
MYIP=$(wget -qO- ipinfo.io/ip);
echo -e "Autoscript By Vinstechmy"
echo -e ""
trg="$(cat ~/log-install.txt | grep -i Trojan-Go | cut -d: -f2|sed 's/ //g')"
echo -e "      Change Port $trg"
read -p "New Port Trojan-Go: " trg2
if [ -z $trg2 ]; then
echo "Please Input Port"
exit 0
fi
cek=$(netstat -nutlp | grep -w $trg2)
if [[ -z $cek ]]; then
sed -i "s/$trg/$trg2/g" /etc/trojan-go/config.json
sed -i "s/   - Trojan-Go               : $trg/   - Trojan-Go               : $trg2/g" /root/log-install.txt
iptables -D INPUT -m state --state NEW -m tcp -p tcp --dport $trg -j ACCEPT
iptables -D INPUT -m state --state NEW -m udp -p udp --dport $trg -j ACCEPT
iptables -I INPUT -m state --state NEW -m tcp -p tcp --dport $trg2 -j ACCEPT
iptables -I INPUT -m state --state NEW -m udp -p udp --dport $trg2 -j ACCEPT
iptables-save > /etc/iptables.up.rules
iptables-restore -t < /etc/iptables.up.rules
netfilter-persistent save > /dev/null
netfilter-persistent reload > /dev/null
systemctl restart trojan-go > /dev/null
echo -e "\e[032;1mPort $trg2 modified successfully\e[0m"
else
echo "Port $trg2 is used"
fi
