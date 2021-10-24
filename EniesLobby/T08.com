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
@       IN      NS      T08.com.
@       IN      A       192.215.2.2
www     IN      CNAME   T08.com.
franky  IN      A       192.215.2.3