#!/usr/bin/bash
# AstraNmap v1.1
# Author: DedSecTL
# Date: 09-12-2017 (09:11)
# Github: http://github.com/Gameye98
# Blog: http://blackholesec.blogspot.com
# Team: BlackHole Security (BlackHoleSec)
if [ "$(which nmap)" == "" ]; then
	echo -n -e "nmap need to be installed [y/N] "
	read yorn
	if [ "$yorn" == "y" ] || [ "$yorn" == "Y" ]; then
		apt install nmap
	elif [ "$yorn" == "n" ] || [ "$yorn" == "N" ]; then
		exit
	else
		apt install nmap
	fi
fi
clear
echo -e "    _  - -  _                                                   "
echo -e " /             \                                                "
echo -e "|    ()   ()    |  ____ ____ ___ ____ ____   _  _ _  _ ____ ___ "
echo -e "(_     /|\     _)  |__| [__   |  |__/ |__| # |\ | |\/| |__| |__]"
echo -e " \_\,,,,,,,,,/_/   |  | ___]  |  |  \ |  | # | \| |  | |  | |   "
echo -e "    \_'''''_/      09-12-2017 (09:11). DedSecTL # BlackHoleSec"
echo
echo -e " [01] Scan Single Host or IP address (IPv4)"
echo -e " [02] Scan multiple IP address or subnet (IPv4)"
echo -e " [03] Read list of hosts/networks from a file (IPv4)"
echo -e " [04] OS and version detection scan"
echo -e " [05] Scan a host when protected by the firewall"
echo -e " [06] Scan an IPv6 host/address"
echo -e " [07] Only show open (or possibly open) ports"
echo -e " [08] Show all packets sent and received"
echo -e " [09] Fast scan all your devices/computers for open ports ever"
echo -e " [00] Exit"
echo
echo -n -e "astranmap > "
read astranmap

if [ "$astranmap" == "01" ] || [ "$astranmap" == "1" ];
then
echo
echo -n -e "Enter (IP or Hostname): "
read iphostname
echo
nmap $iphostname

elif [ "$astranmap" == "02" ] || [ "$astranmap" == "2" ];
then
echo
echo -n -e "Enter (IP or Hostname): "
read iphostname
for lulz in $iphostname
do
  echo
  nmap $lulz
done

elif [ "$astranmap" == "03" ] || [ "$astranmap" == "3" ];
then
echo
echo -n -e "Enter Text File: "
read txtfile
echo
nmap -iL $txtfile

elif [ "$astranmap" == "04" ] || [ "$astranmap" == "4" ];
then
echo
echo -n -e "Enter (IP or Hostname): "
read iphostname
echo
nmap -A $iphostname

elif [ "$astranmap" == "05" ] || [ "$astranmap" == "5" ];
then
echo
echo -n -e "Enter (IP or Hostname): "
read iphostname
echo
nmap -PN $iphostname

elif [ "$astranmap" == "06" ] || [ "$astranmap" == "6" ];
then
echo
echo -n -e "Enter IPv6-Address: "
read ipvsixaddress
echo
nmap -6 $ipvsixaddress

elif [ "$astranmap" == "07" ] || [ "$astranmap" == "7" ];
then
echo
echo -n -e "Enter (IP or Hostname): "
read iphostname
echo
nmap --open $iphostname

elif [ "$astranmap" == "08" ] || [ "$astranmap" == "8" ];
then
echo
echo -n -e "Enter (IP or Hostname): "
read iphostname
echo
nmap --packet-trace $iphostname

elif [ "$astranmap" == "09" ] || [ "$astranmap" == "9" ];
then
echo
echo -n -e "Enter (IP or Hostname): "
read iphostname
echo
nmap -T5 $iphostname

elif [ "$astranmap" == "00" ] || [ "$astranmap" == "0" ];
then
exit

else
echo
echo -e "\033[1;31m[!] Wrong Input...\033[1;0m"
sleep 1
bash $0
fi