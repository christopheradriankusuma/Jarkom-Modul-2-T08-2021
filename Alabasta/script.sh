echo "nameserver 192.215.2.2" > /etc/resolv.conf
echo "nameserver 192.168.122.1" >> /etc/resolv.conf

apt update
apt install dnsutils -y
apt install lynx -y