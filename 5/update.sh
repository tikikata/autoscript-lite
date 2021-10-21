#!/bin/bash
if [ "${EUID}" -ne 0 ]; then
		echo "You need to run this script as root"
		exit 1
fi
if [ "$(systemd-detect-virt)" == "openvz" ]; then
		echo "OpenVZ is not supported"
		exit 1
fi
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
MYIP=$(wget -qO- ipinfo.io/ip);
versi=$(cat /home/ver)
if [[ $versi == 1.3 ]]; then
echo "You Have The Latest Version"
exit 0
fi
echo ""
echo "Start Update Autoscripts . . ."
echo ""
rm -f /usr/bin/menu
rm -f /usr/bin/change-port
rm -f /usr/bin/restart
rm -f /usr/bin/backup
rm -f /usr/bin/restore
rm -f /usr/bin/status
cd /usr/bin
wget -O menu "https://raw.githubusercontent.com/vinstechmy/autoscript-lite/main/5/menu.sh"
wget -O menu-ssh "https://raw.githubusercontent.com/vinstechmy/autoscript-lite/main/5/menu-ssh.sh"
wget -O change-port "https://raw.githubusercontent.com/vinstechmy/autoscript-lite/main/5/change.sh"
wget -O backup "https://raw.githubusercontent.com/vinstechmy/autoscript-lite/main/5/backup.sh"
wget -O restore "https://raw.githubusercontent.com/vinstechmy/autoscript-lite/main/5/restore.sh"
wget -O status "https://raw.githubusercontent.com/vinstechmy/autoscript-lite/main/5/status.sh"
wget -O restart "https://raw.githubusercontent.com/vinstechmy/autoscript-lite/main/5/restart.sh"
chmod +x /usr/bin/menu
chmod +x /usr/bin/menu-ssh
chmod +x /usr/bin/change-port
chmod +x /usr/bin/backup
chmod +x /usr/bin/restore
chmod +x /usr/bin/status
chmod +x /usr/bin/restart
echo "0 5 * * * root clear-log && reboot" > /etc/crontab
echo "0 0 * * * root xp" > /etc/crontab
cd
echo "1.3" > /home/ver
clear
echo " Fix minor Bugs . . ."
echo  ""
echo " Final Checking . . ."
rm -f update.sh
sleep 3
echo -e ""
echo " Update AutoScript Complete !"
echo ""
sleep 2
clear
