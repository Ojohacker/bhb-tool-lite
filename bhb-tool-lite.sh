
#!/bin/bash
clear
echo "                                          ██████╗ ██╗  ██╗██████╗     ████████╗ ██████╗  ██████╗ ██╗"
echo "                                          ██╔══██╗██║  ██║██╔══██╗    ╚══██╔══╝██╔═══██╗██╔════╝ ██║"
echo "                                          ██████╔╝███████║██████╔╝       ██║   ██║   ██║██║  ███╗██║"
echo "                                          ██╔═══╝ ██╔══██║██╔═══╝        ██║   ██║   ██║██║   ██║██║"
echo "                                          ██║     ██║  ██║██║            ██║   ╚██████╔╝╚██████╔╝███████╗"
echo "                                          ╚═╝     ╚═╝  ╚═╝╚═╝            ╚═╝    ╚═════╝  ╚═════╝ ╚══════╝"
echo "                         Created by Ojocoder | BHB Tool Lite"
echo ""
echo "[1] Port Scanner"
echo "[2] IP Info Checker"
echo "[3] Website Header Grabber"
echo "[0] Exit"
read -p $'\nChagua option: ' choice

if [ "$choice" == "1" ]; then
    read -p "Ingiza IP au Domain: " target
    nmap $target
elif [ "$choice" == "2" ]; then
    read -p "Ingiza IP: " ip
    curl ipinfo.io/$ip
elif [ "$choice" == "3" ]; then
    read -p "Ingiza URL (mfano https://example.com): " url
    curl -I $url
elif [ "$choice" == "0" ]; then
    echo "Toka..."
else
    echo "Chaguo si sahihi."
fi
