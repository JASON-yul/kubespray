#!/bin/bash

if [ -e /etc/apt/apt.conf ]; then
mv /etc/apt/apt.conf /etc/apt/apt.conf.bak-`date +%F-%T`
else
cat > /etc/apt/apt.conf << EOF
Acquire::http::Proxy "http://XXXX:8080";
Acquire::https::Proxy "http://XXXX:8080";
EOF
fi	
