echo "nameserver 192.168.122.1" > /etc/resolv.conf

apt update
apt install apache2 php libapache2-mod-php7.0 unzip -y

a2enmod rewrite
htpasswd -b -c /etc/apache2/.htpasswd luffy onepiece
unzip -o apache2.zip -d /etc
unzip -o www.zip -d /var
service apache2 restart

# git config --global http.sslVerify "false"
# git clone https://github.com/FeinardSlim/Praktikum-Modul-2-Jarkom.git
# unzip Praktikum-Modul-2-Jarkom/franky.zip
# unzip Praktikum-Modul-2-Jarkom/general.mecha.franky.zip
# unzip Praktikum-Modul-2-Jarkom/super.franky.zip
# mv franky /var/www/franky.T08.com
# mv super.franky /var/www/super.franky.T08.com
# mv general.mecha.franky /var/www/general.mecha.franky.T08
# rm -rf Praktikum-Modul-2-Jarkom