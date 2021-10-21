#!/bin/bash
clear
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
MYIP=$(wget -qO- ipinfo.io/ip);
echo -e "Autoscript By Vinstechmy"
echo -e ""
echo -e ".-------------------------------------."
echo -e "|        Restart-Services-Menu        |"
echo -e "'-------------------------------------'"
echo -e "======================================="
echo -e ""
echo -e ""
echo -e "    [1] Restart All Services"
echo -e "    [2] Restart OpenSSH"
echo -e "    [3] Restart Dropbear"
echo -e "    [4] Restart Stunnel4"
echo -e "    [5] Restart OpenVPN"
echo -e "    [6] Restart Squid"
echo -e "    [7] Restart V2Ray/Trojan/XRay"
echo -e "    [8] Restart Wireguard"
echo -e "    [x] Exit"
echo -e ""
read -p "    Select From Options [1-8 or x] :  " Restart
echo -e ""
echo -e "======================================"
sleep 1
clear
case $Restart in
                1)
                clear
                /etc/init.d/ssh restart
                /etc/init.d/dropbear restart
                /etc/init.d/stunnel4 restart
                /etc/init.d/openvpn restart
                /etc/init.d/fail2ban restart
                /etc/init.d/cron restart
                /etc/init.d/nginx restart
                /etc/init.d/squid restart
				systemctl restart trojan
				systemctl restart v2ray
				systemctl restart v2ray@none
                systemctl restart v2ray@vless
				systemctl restart v2ray@vnone
				systemctl restart xray-mini@service
				systemctl restart wg-quick@wg0
				screen -dmS badvpn badvpn-udpgw --listen-addr 127.0.0.1:7100 --max-clients 1000
                screen -dmS badvpn badvpn-udpgw --listen-addr 127.0.0.1:7200 --max-clients 1000
                screen -dmS badvpn badvpn-udpgw --listen-addr 127.0.0.1:7300 --max-clients 1000
                echo -e ""
                echo -e "======================================"
                echo -e ""
                echo -e "          Services Restarted         "
                echo -e ""
                echo -e "======================================"
                exit
                ;;
				2)
                clear
                /etc/init.d/ssh restart
                echo -e ""
                echo -e "======================================"
                echo -e ""
                echo -e "         SSH Service Restarted        "
                echo -e ""
                echo -e "======================================"
                exit
                ;;
                3)
                clear
                /etc/init.d/dropbear restart
                echo -e ""
                echo -e "======================================"
                echo -e ""
                echo -e "       Dropbear Service Restarted     "
                echo -e ""
                echo -e "======================================"
                exit
                ;;
                4)
                clear
                /etc/init.d/stunnel4 restart
                echo -e ""
                echo -e "======================================"
                echo -e ""
                echo -e "      Stunnel4 Service Restarted      "
                echo -e ""
                echo -e "======================================"
                exit
                ;;
                5)
                clear
                /etc/init.d/openvpn restart
                echo -e ""
                echo -e "======================================"
                echo -e ""
                echo -e "       OpenVPN Service Restarted      "
                echo -e ""
                echo -e "======================================"
                exit
                ;;
                6)
                clear
                /etc/init.d/squid restart
                echo -e ""
                echo -e "======================================"
                echo -e ""
                echo -e "        Squid3 Service Restarted      "
                echo -e ""
                echo -e "======================================"
                exit
                ;;
				7)
                clear
				systemctl restart trojan
				systemctl restart v2ray
				systemctl restart v2ray@none
                systemctl restart v2ray@vless
				systemctl restart v2ray@vnone
				systemctl restart xray-mini@service
                echo -e ""
                echo -e "======================================"
                echo -e ""
                echo -e "  V2Ray/Trojan/XRay Service Restarted "
                echo -e ""
                echo -e "======================================"
                exit
                ;;
				8)
                clear
				systemctl restart wg-quick@wg0
                echo -e ""
                echo -e "======================================"
                echo -e ""
                echo -e "     Wireguard Service Restarted      "
                echo -e ""
                echo -e "======================================"
                exit
                ;;
                x)
                clear
                exit
                ;;
        esac