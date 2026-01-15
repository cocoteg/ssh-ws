#!/usr/bin/bash

apt update
apt install wget curl openssl binutils -y


read -p "Input Domain: " domain
echo -e "$domain" > /root/.domain

cd /usr/local/bin
apt install cron -y
wget -O xp ""
chmod +x xp
echo "*/15 * * * * root xp" >> /etc/crontab
systemctl daemon-reload
systemctl restart cron

apt install sudo -y

# Install Port
bash <(curl -Lks https://github.com/cocoteg/ssh-ws/raw/refs/heads/main/install/proxy.sh)
bash <(curl -Lks https://github.com/cocoteg/ssh-ws/raw/refs/heads/main/install/443.sh)
bash <(curl -Lks https://github.com/cocoteg/ssh-ws/raw/refs/heads/main/install/80.sh)

# Install Menu
cd /usr/local/bin
wget -O menu "https://github.com/cocoteg/ssh-ws/raw/refs/heads/main/menu/menu-ssh.sh"
chmod +x menu

reboot
