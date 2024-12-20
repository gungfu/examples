#!/bin/bash
echo "Starting gen caddyfile..."
cat << EOF > ./Caddyfile
:80
reverse_proxy /ray 127.0.0.1:8089
EOF
chmod +x ./caddy
chmod +x ./helloworld
echo "Starting caddy..."
./caddy start -config ./Caddyfile
echo "nameserver 1.1.1.1" > /etc/resolv.conf
echo "show resolv config..."
cat /etc/resolv.conf
#echo "nslookup google..."
#nslookup www.google.com
#echo "get google.com..."
#curl -v "https://www.google.com"
echo "Starting helloworld..."
#./helloworld run -c ./helloworld.json
./helloworld run -c ./helloworld.json > /dev/null 2>&1
