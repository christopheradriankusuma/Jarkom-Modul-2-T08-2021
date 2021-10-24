echo "nameserver 192.168.122.1" > /etc/resolv.conf

apt update
apt install apache2 -y
apt install php -y
apt install libapache2-mod-php7.0 -y