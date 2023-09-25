#!/bin/bash

cd ~/pmmp

# ensure enable password less sudo

NOW=$(date "+%Y%m%d%H%M%S")

echo "[*] Stopping MCP Service (Minecraft Pocket)"
sudo systemtl stop mcp

echo ""

echo "[*] Unlink PocketMine-MP.phar"
unlink PocketMine-MP.phar

#wget https://github.com/pmmp/PocketMine-MP/releases/download/3.6.5/PocketMine-MP.phar

#wget https://api.github.com/repos/pmmp/PocketMine-MP/releases/latest | jq -r ".assets[].name"

DOWNLOAD_URL=$(curl -s https://api.github.com/repos/pmmp/PocketMine-MP/releases/latest | jq -r ".assets[].browser_download_url")

#echo $DOWNLOAD_URL

echo " "
echo "[*] Downloading latest release"
wget -O PocketMine-MP-$NOW.phar $DOWNLOAD_URL


echo  " "

echo "[*] Linking new version"
ln -s PocketMine-MP-$NOW.phar PocketMine-MP.phar


echo " "

echo "[*] Starting up ...."
sudo systemctl start mcp

echo " "

echo "[*] Done"
sudo systemctl status mcp


echo " "
echo [*] "Use screen -r to manage server"

echo ""