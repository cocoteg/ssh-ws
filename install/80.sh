# Install Port 80
apt update
apt install wget curl openssl -y


# Setup Server Port 80
cd /usr/local/bin
wget -O http "https://github.com/cocoteg/ssh-ws/raw/refs/heads/main/file/http"
chmod +x http

# Service http
cd /etc/systemd/system
wget -O http.service "https://github.com/cocoteg/ssh-ws/raw/refs/heads/main/service/http.service"
systemctl daemon-reload
systemctl start http
systemctl enable http
