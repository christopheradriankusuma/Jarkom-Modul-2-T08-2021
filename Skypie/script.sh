echo "nameserver 192.168.122.1" > /etc/resolv.conf

apt update
apt install apache2 -y
apt install php -y
apt install libapache2-mod-php7.0 -y
apt install git -y
apt install unzip -y

a2enmod rewrite
htpasswd -b -c /etc/apache2/.htpasswd luffy onepiece
service apache2 restart

git config --global http.sslVerify "false"
git clone https://github.com/FeinardSlim/Praktikum-Modul-2-Jarkom.git
unzip Praktikum-Modul-2-Jarkom/franky.zip
unzip Praktikum-Modul-2-Jarkom/general.mecha.franky.zip
unzip Praktikum-Modul-2-Jarkom/super.franky.zip
mv franky /var/www/franky.T08.com
mv super.franky /var/www/super.franky.T08.com
mv general.mecha.franky /var/www/general.mecha.franky.T08
rm -rf Praktikum-Modul-2-Jarkom