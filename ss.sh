#!/bin/bash

echo "net.core.default_qdisc=fq" >> /etc/sysctl.conf
echo "net.ipv4.tcp_congestion_control=bbr" >> /etc/sysctl.conf
sysctl -p
apt update; apt upgrade
apt install python-pip
wget --no-check-certificate https://pypi.python.org/packages/source/s/setuptools/setuptools-12.0.3.tar.gz#md5=f07e4b0f4c1c9368fcd980d888b29a65 
tar -zxvf setuptools-12.0.3.tar.gz
cd setuptools-12.0.3/ 
python setup.py install
cd ..
rm -rf setuptools-12.0.3.tar.gz setuptools-12.0.3/
pip install shadowsocks


cat > ss-conf.json <<EOF
{
"server":"0.0.0.0",
"server_port":8838,
"local_address":"127.0.0.1",
"local_port":1080,
"password":"123456",
"timeout":600,
"method":"aes-256-cfb"
}
EOF
mv ss-conf.json /etc/
ssserver -c /etc/ss-conf.json -d start

