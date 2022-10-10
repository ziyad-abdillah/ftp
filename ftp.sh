#!/bin/bash

sudo apt-get update && sudo apt-get install proftpd-*

sudo cp ~/Documents/proftpd.conf. /etc/proftpd/proftpd.conf

sudo cp /etc/proftpd/proftpd.conf /etc/proftpd/proftpd.conf.backup

sudo mkdir -p /etc/proftpd/ssl

sudo openssl req -new -x509 -days 365 -nodes -out /etc/proftpd/ssl/proftpd.cert.pem -keyout /etc/proftpd/ssl/proftpd.key.pem

sudo chmod -R 750 /etc/proftpd/ssl

sudo cp ~/Documents/tls.conf. /etc/proftpd/tls.conf

sudo cp ~/Documents/modules.conf. /etc/proftpd/modules.conf

sudo service proftpd restart
