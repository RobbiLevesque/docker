  docker build . -t robbineux/mynginx

 docker push robbineux/mynginx

 ##openssl pkcs12 -in it.ip3.gouv.qc.ca.pfx -nocerts -out my-site.key
 openssl pkcs12 -in it.ip3.gouv.qc.ca.pfx -nocerts -nodes -out my-site.rsa
 openssl pkcs12 -in it.ip3.gouv.qc.ca.pfx -clcerts -nokeys -out my-site.crt



 