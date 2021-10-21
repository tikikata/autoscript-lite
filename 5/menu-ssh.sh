#!/bin/bash
clear
echo -e ""
echo -e "\e[94m             .----------------------------------------------------.    "
echo -e "\e[94m             |                 SSH & OpenVPN Menu                 |    "
echo -e "\e[94m             '----------------------------------------------------'    "
echo -e "\e[0m"
echo -e " \e[1;31m1)\e[0m \e[1;32m: Create SSH & OVPN Account\e[0m"
echo -e " \e[1;31m2)\e[0m \e[1;32m: Create Trial SSH & OVPN Account\e[0m"
echo -e " \e[1;31m3)\e[0m \e[1;32m: Renew SSH & OVPN Account\e[0m"
echo -e " \e[1;31m4)\e[0m \e[1;32m: Delete SSH & OVPN Account\e[0m"
echo -e " \e[1;31m5)\e[0m \e[1;32m: Check Login SSH & OVPN Account\e[0m"
echo -e " \e[1;31m6)\e[0m \e[1;32m: Check User SSH & OVPN Account\e[0m"
echo -e " \e[1;31m7)\e[0m \e[1;32m: Delete Expired SSH & OVPN Account\e[0m"
echo -e " \e[1;31m8)\e[0m \e[1;32m: Autokill SSH & OVPN Account\e[0m"
echo -e " \e[1;31m9)\e[0m \e[1;32m: Display Multi Login User\e[0m"
echo -e ""
read -p " Select From Options [1-9 or x]: " menussh
echo -e ""
case $menussh in
1)
usernew
echo ""
read -n1 -r -p "Press any key to continue..."
menu
;;
2)
trial
echo ""
read -n1 -r -p "Press any key to continue..."
menu
;;
3)
renew
echo ""
read -n1 -r -p "Press any key to continue..."
menu
;;
4)
del
echo ""
read -n1 -r -p "Press any key to continue..."
menu
;;
5)
cek
echo ""
read -n1 -r -p "Press any key to continue..."
menu
;;
6)
member
echo ""
read -n1 -r -p "Press any key to continue..."
menu
;;
7)
delete
echo ""
read -n1 -r -p "Press any key to continue..."
menu
;;
8)
autokill
echo ""
read -n1 -r -p "Press any key to continue..."
menu
;;
9)
ceklim
echo ""
read -n1 -r -p "Press any key to continue..."
menu 
;;
x)
menu
;;
*)
echo -e "${Error}Please enter the correct number [1-9] "
echo ""
read -n1 -r -p "Press any key to continue..."
menu-ssh
;;
esac
