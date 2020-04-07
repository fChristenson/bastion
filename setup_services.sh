#!/bin/bash

iptables -A INPUT -m state --state RELATED,ESTABLISHED -j ACCEPT
iptables -A INPUT -p tcp --dport 22 -s bastion -j ACCEPT
iptables -A INPUT -p tcp --dport 22 -j DROP
/usr/sbin/sshd -D
