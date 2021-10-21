#!/bin/bash
clear
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
MYIP=$(wget -qO- ipinfo.io/ip);
clear
echo -e "Autoscript By Vinstechmy"
echo -e ""
echo -e ".------------------------------------."
echo -e "|          Change-Port-Menu          |"
echo -e "'------------------------------------'"
echo -e "======================================"
echo -e ""
echo -e "     [1]  Change Port Vmess Websocket"
echo -e "     [2]  Change Port Vless Websocket"
echo -e "     [3]  Change Port XRay Vless"
echo -e "     [4]  Change Port Trojan"
echo -e "     [5]  Change Port Squid"
echo -e "     [6]  Change Port SSL"
echo -e "     [7]  Change Port OVPN"
echo -e "     [8]  Change Port Wireguard"
echo -e "     [x]  Exit"
echo -e "======================================"
echo -e ""
read -p "     Select From Options [1-8 or x] :  " port
echo -e ""
case $port in
1)
port-ws
;;
2)
port-vless
;;
3)
port-xray
;;
4)
port-tr
;;
5)
port-squid
;;
6)
port-ssl
;;
7)
port-ovpn
;;
8)
port-wg
;;
x)
clear
menu
;;
*)
echo -e " ${Error}Please enter the correct number [1-8] "
echo ""
read -n1 -r -p " Press any key to continue..."
change-port
;;
esac
