#!/bin/sh
find /usr/local/shadowsocksr/ -mtime +10 -name "*.log" -exec rm -rf {} \;
PID=`ps -ef |grep -v grep | grep server.py |awk '{print $2}'`
[[ ! -z ${PID} ]] && /etc/init.d/ssrmu stop
/etc/init.d/ssrmu start
