#!/bin/bash

sudo -i;
apt update; apt upgrade -y; apt install docker.io -y;
docker pull imhang/kcp-shadowsocks-docker;
docker run -d --restart=always -e "SS_PORT=443" -e "SS_PASSWORD=123456" -e "SS_METHOD=chacha20" -e "SS_TIMEOUT=600" -e "KCP_PORT=9443" -e "KCP_MODE=fast" -e "MTU=1400" -e "SNDWND=1024" -e "RCVWND=1024" -p 443:443 -p 443:443/udp -p 9443:9443/udp --name ssserver imhang/kcp-shadowsocks-docker
echo "net.core.default_qdisc=fq" >> /etc/sysctl.conf;
echo "net.ipv4.tcp_congestion_control=bbr" >> /etc/sysctl.conf;
sysctl -p;
sysctl -p >> log.txt;
lsmod | grep bbr >> log.txt;
