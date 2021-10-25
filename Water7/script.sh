echo "nameserver 192.168.122.1" > /etc/resolv.conf

apt update
apt install bind9 -y

mkdir /etc/bind/sunnygo