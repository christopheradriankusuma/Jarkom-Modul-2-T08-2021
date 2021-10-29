# Jarkom-Modul-2-T08-2021




## 8. Setelah melakukan konfigurasi server, maka dilakukan konfigurasi Webserver. Pertama dengan webserver `www.franky.yyy.com`. Pertama, luffy membutuhkan webserver dengan DocumentRoot pada `/var/www/franky.yyy.com`.

### Solusi
Pertama-tama install php dan apache pada *Skypie*.

```
apt-get install php
apt-get install apache2
```
Lalu jalankan webserver Apache
```
service apache2 start
```
Lalu melakukan gitclone `https://github.com/FeinardSlim/Praktikum-Modul-2-Jarkom` pada /var/www, selanjutnya melakukan unzip dan rename folder sesuai dengan syarat soal shift.

![Soal 8-1](images/8-1.png)

Selanjutnya mengcopy file dari `/etc/apache2/sites-available/000-default.conf` menjadi `/etc/apache2/sites-available/franky.T08.com.conf`. Lalu mengatur konfigurasi webserver dengan DocumentRoot pada /var/www/franky.T08.com.

![Soal 8-2](images/8-2.png)
![Soal 8-3](images/8-3.png)

Lalu mencoba membuka `franky.T08.com` dengan lynx pada *Loguetown*.

![Soal 8-4](images/8-4.png)
![Soal 8-5](images/8-5.png)



## 9. Setelah itu, Luffy juga membutuhkan agar url `www.franky.yyy.com/index.php/home` dapat menjadi menjadi `www.franky.yyy.com/home`. 


### Solusi
Menggunakan module *rewrite*. Pertama aktifkan module dengan `a2enmod rewrite`, selanjutnya pindah ke `/var/www/franky.T08.com/` lalu membuat file `.htaccess` dengan isi : 
```
 RewriteEngine On
 RewriteCond %{REQUEST_FILENAME} !-d
 RewriteRule ^([^\.]+)$ $1.php [NC,L]
```

![Soal 9-1](images/9-1.png)

Pindah ke directory /etc/apache2/sites-available kemudian buka file franky.TO8.com.conf dan tambahkan.

```
 <Directory /var/www/franky.T08.com>
     Options +FollowSymLinks -Multiviews
     AllowOverride All
 </Directory>
```

![Soal 9-2](images/9-2.png)

Selanjutnya mencoba membuka `www.franky.T08.com/home` dengan lynx pada *Loguetown*.

![Soal 9-3](images/9-3.png)
![Soal 9-4](images/9-4.png)


## 10. Setelah itu, pada subdomain `www.super.franky.yyy.com`, Luffy membutuhkan penyimpanan aset yang memiliki DocumentRoot pada `/var/www/super.franky.yyy.com`.

### Solusi

Selanjutnya mengcopy file dari `/etc/apache2/sites-available/000-default.conf` menjadi `/etc/apache2/sites-available/super.franky.T08.com.conf`. Lalu mengatur konfigurasi webserver dengan DocumentRoot pada /var/www/super.franky.T08.com dengan menambahkan :

```
 <Directory /var/www/super.franky.T08.com>
     Options +Indexes
 </Directory>
```

![Soal 10_1](images/10_1.png)

Selanjutnya mencoba membuka `super.www.franky.T08.com` dengan lynx pada *Loguetown*.

![Soal 10_2](images/10_2.png)
![Soal 10_3](images/10_3.png)


## 11. Akan tetapi, pada folder /public, Luffy ingin hanya dapat melakukan directory listing saja.


### Solusi
Pertama-tama mengatur konfigurasi webserver dengan DocumentRoot pada `/var/www/super.franky.T08.com` dengan menambahkan :

```
 <Directory /var/www/super.franky.T08.com>
     Options +Indexes
 </Directory>
```

![Soal 11_1](images/11_1.png)

Selanjutnya mencoba membuka `super.www.franky.T08.com` dengan lynx pada *Loguetown*.

![Soal 11_2](images/11_2.png)
![Soal 11_3](images/11_3.png)
![Soal 11_4](images/11_4.png)

## 12. Tidak hanya itu, Luffy juga menyiapkan error file 404.html pada folder /error untuk mengganti error kode pada apache .

### Solusi
Untuk mengganti, pindah ke /var/www/super.www.franky.T08.com lalu membuat .htaccess

![Soal 12_1](images/12_1.png)

Selanjutnya mencoba membuka `super.www.franky.T08.com` dengan lynx pada *Loguetown*.

![Soal 12_2](images/12_2.png)
![Soal 12_3](images/12_3.png)

