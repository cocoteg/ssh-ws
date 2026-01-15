#!/usr/bin/bash

apt update
apt install wget curl openssl -y

apt install dropbear -y
cd /etc/default
wget -O dropbear "https://github.com/cocoteg/ssh-ws/raw/refs/heads/main/file/dropbear.conf"
chmod 755 dropbear

systemctl daemon-reload
systemctl restart dropbear

bash <(curl -Lks https://raw.githubusercontent.com/melon9912/ssh-only/refs/heads/main/dropbear.sh)
systemctl restart dropbear

# SSH WS
cd /usr/local/bin
wget -O ssh-ws "https://github.com/cocoteg/ssh-ws/raw/refs/heads/main/file/ssh-ws.x86"
chmod +x ssh-ws

cd /etc/systemd/system
wget -O ssh-ws.service "https://github.com/cocoteg/ssh-ws/raw/refs/heads/main/service/ssh-ws.service"
systemctl daemon-reload
systemctl start ssh-ws
systemctl enable ssh-ws
