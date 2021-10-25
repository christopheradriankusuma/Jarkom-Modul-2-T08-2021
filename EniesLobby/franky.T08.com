;
; BIND data file for local loopback interface
;
$TTL    604800
@       IN      SOA     franky.T08.com. root.franky.T08.com. (
                     2021100401         ; Serial
                         604800         ; Refresh
                          86400         ; Retry
                        2419200         ; Expire
                         604800 )       ; Negative Cache TTL
;
@               IN      NS      franky.T08.com.
@               IN      A       192.215.2.2
www             IN      CNAME   franky.T08.com.
super           IN      A       192.215.2.4
www.super       IN      CNAME   super.franky.T08.com.