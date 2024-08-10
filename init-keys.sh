#!/bin/sh

echo "generating self-signed keys in /config/keys"
mkdir /config/keys
openssl req -new -x509 -days 3650 -nodes -out /config/keys/cert.crt -keyout /config/keys/cert.key -subj "/CN=omkretsen.no"