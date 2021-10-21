#!/bin/bash
clear
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
MYIP=$(wget -qO- ipinfo.io/ip);
echo "Autoscript By Vinstechmy"
echo ""
echo "----------------------------------"
echo "USERNAME          EXP DATE     "
echo "----------------------------------"
while read expired
do
AKUN="$(echo $expired | cut -d: -f1)"
ID="$(echo $expired | grep -v nobody | cut -d: -f3)"
exp="$(chage -l $AKUN | grep "Account expires" | awk -F": " '{print $2}')"
status="$(passwd -S $AKUN | awk '{print $2}' )"
if [[ $ID -ge 1000 ]]; then
if [[ "$status" = "L" ]]; then
printf "%-17s %2s %-17s %2s \n" "$AKUN" "$exp     "
else
printf "%-17s %2s %-17s %2s \n" "$AKUN" "$exp     "
fi
fi
done < /etc/passwd
echo ""
echo -e "-----------------------"
echo -e "Delete SSH & OVPN User"
echo -e "-----------------------"
read -p "Username : " AKUN
echo -e ""
	if getent passwd $AKUN > /dev/null 2>&1; then
		userdel $AKUN
		clear
		echo "SSH & OVPN Account Deleted Successfully"
		echo "=========================="
		echo "Client Name : $AKUN"
		echo "Expired On  : $exp"
		echo "=========================="
		echo ""
		echo "Autoscript By Vinstechmy"
	else
		echo -e "User '$AKUN' does not exist."
		echo -e ""
	fi

