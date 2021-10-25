;
; BIND data file for local loopback interface
;
$TTL    604800
@       IN      SOA     T08.com. root.T08.com. (
                     2021100401         ; Serial
                         604800         ; Refresh
                          86400         ; Retry
                        2419200         ; Expire
                         604800 )       ; Negative Cache TTL
;
@                       IN      NS      T08.com.
@                       IN      A       192.215.2.2
franky                  IN      A       192.215.2.2
www.franky              IN      CNAME   franky.T08.com.
super.franky            IN      A       192.215.2.4
www.super.franky        IN      CNAME   super.franky.T08.com.