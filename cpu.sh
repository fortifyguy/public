#!/bin/sh


echo "========================Disk Output====================="
df -kh
echo "==========================Date=========================="
date
echo "========================Live users======================"
ipset -L lusers | wc -l
echo "======================ARP Connection===================="
arp -a | wc -l

echo "=============No. of connection on Port 80=============="
conntrack -L | grep 80 |wc -l

echo "==============No. of connection on Port 443============"
conntrack -L | grep 443 |wc -l

echo "===========================Core========================"
ls -lah /var/cores



echo "===================Virtual Memory======================"
vmstat


cd /log

grep reject awarrenhttp.log

grep segfault *.log

grep Segmentation *.log

grep fault /log/garner.log


echo "=========================Process========================"
sleep 2
psmon
