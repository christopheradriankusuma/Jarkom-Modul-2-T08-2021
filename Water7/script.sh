echo "nameserver 192.168.122.1" > /etc/resolv.conf

apt update
apt install bind9 unzip -y

unzip -o bind.zip -d /etc
service bind9 restart