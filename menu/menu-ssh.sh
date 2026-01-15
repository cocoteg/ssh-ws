#!/usr/bin/bash
clear
echo -e "      Menu SSH
________________________________
1. Create Account
2. Delete Account 
3. Cek User Login
4. List Total Account
5. Change Domain
________________________________"
read -p "Input Options: " ops
case $ops in
1) bash <(curl -Lks https://github.com/cocoteg/ssh-ws/raw/refs/heads/main/menu/addssh.sh) ;;
2) bash <(curl -Lks https://github.com/cocoteg/ssh-ws/raw/refs/heads/main/menu/delete-ssh.sh) ;;
3) bash <(curl -Lks https://github.com/cocoteg/ssh-ws/raw/refs/heads/main/menu/cek-ssh.sh) ;;
4) bash <(curl -Lks https://github.com/cocoteg/ssh-ws/raw/refs/heads/main/menu/list-ssh.sh) ;;
5) bash <(curl -Lks https://github.com/cocoteg/ssh-ws/raw/refs/heads/main/menu/domain.sh) ;;
*) menu
esac
