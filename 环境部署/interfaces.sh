#!/bin/bash
set -e
NetMask=$(ip a|grep eth0|grep inet|awk -F"/" '{print $2}'|awk '{print $1}')
if [ $NetMask != 23 ];then
	exit 1
fi

mv /etc/network/interfaces /etc/network/interfaces.bak

IP=$(ip a|grep eth0|grep inet|awk -F"/" '{print $1}'|awk '{print $2}')
cat > /etc/network/interfaces << EOF
auto lo
iface lo inet loopback
auto eth0
iface eth0 inet static
EOF

ADD=$IP
GATE=$(route -n|grep eth0|awk '{if ($1=="0.0.0.0") print $2}'|head -1)
MASK=$(route -n|grep eth0|awk '{if ($2=="0.0.0.0") print $3}'|head -1)

echo -e "address $IP" >> /etc/network/interfaces
echo -e "gateway $GATE" >> /etc/network/interfaces
echo -e "netmask $MASK" >> /etc/network/interfaces
