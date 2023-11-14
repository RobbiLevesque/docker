sudo openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout my-site.key -out my-site.crt -config my-site.conf -passin pass:YourStrongPassword

rem sudo openssl req -out my-site.csr -newkey rsa:4096 -nodes -config my-site.conf 
pause
sudo openssl pkcs12 -export -out my-site.pfx -inkey my-site.key -in my-site.crt
