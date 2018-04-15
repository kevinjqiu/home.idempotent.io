$TTL	604800
@	IN	SOA	ns1.home.idempotent.io. admin.home.idempotent.io. (
			      3		; Serial
			 604800		; Refresh
			  86400		; Retry
			2419200		; Expire
			 604800 )	; Negative Cache TTL
;

; name servers - NS records
@	IN	NS	ns1
@   IN  NS  ns2

; name servers - A records
ns1.home.idempotent.io.	IN	A	192.168.0.11
ns2.home.idempotent.io. IN  A   192.168.0.12

; 192.168.0.0/16 - A records
monarch.home.idempotent.io.	IN	A	192.168.200.61
idaeus.home.idempotent.io   IN  A   192.168.0.11
nivalis.home.idempotent.io. IN  A   192.168.0.12
opi.home.idempotent.io. IN  A   192.168.200.65
