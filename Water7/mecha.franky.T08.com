;
; BIND data file for local loopback interface
;
$TTL    604800
@       IN      SOA     mecha.franky.T08.com. root.mecha.franky.T08.com. (
                     2021100401         ; Serial
                         604800         ; Refresh
                          86400         ; Retry
                        2419200         ; Expire
                         604800 )       ; Negative Cache TTL
;
@       IN      NS      mecha.franky.T08.com.
@       IN      A       192.215.2.3
www     IN      A       192.215.2.3