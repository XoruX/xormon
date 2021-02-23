# XoruX XorMon container
This is dockerized version of brand new [XoruX](https://xorux.com) application - [XorMon](https://xormon.com).

Quick start:

    docker run -d --name XorMon --restart always -v xormon-data:/root/xormon-data -p 8443:8443 xorux/xormon

Application UI can be found on https://\<CONTAINER_IP\>:8443, use admin@xormon.com / xorux4you for login.

