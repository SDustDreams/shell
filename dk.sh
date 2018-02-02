#!/bin/bash
echo "
---------------------------------------------------------
      正在执行端口开放程序，本程序适用于大多数系统
---------------------------------------------------------
请按照提示进行端口开放

【1】单端口开放

【2】多端口开放
---------------------------------------------------------
"
sleep 1;
read xz
clear

#单端口
if test $xz == 1 ;then
echo '请输入你需要开放的端口然后轻按回车';
read port
clear
	iptables -I INPUT -m state --state NEW -m tcp -p tcp --dport ${port} -j ACCEPT
	iptables -I INPUT -m state --state NEW -m udp -p udp --dport ${port} -j ACCEPT
	/etc/init.d/iptables save
	/etc/init.d/iptables restart
echo '执行完毕';
fi

#多端口
if test $xz == 2 ;then
echo '一次开放三个端口'
echo '请输入你需要开放的端口然后轻按回车';
read dport
	iptables -I INPUT -m state --state NEW -m tcp -p tcp --dport ${dport} -j ACCEPT
	iptables -I INPUT -m state --state NEW -m udp -p udp --dport ${dport} -j ACCEPT
echo '请第二次输入你需要开放的端口然后轻按回车';
read dport
	iptables -I INPUT -m state --state NEW -m tcp -p tcp --dport ${dport} -j ACCEPT
	iptables -I INPUT -m state --state NEW -m udp -p udp --dport ${dport} -j ACCEPT
echo '请第三次输入你需要开放的端口然后轻按回车';
read dport
clear
	iptables -I INPUT -m state --state NEW -m tcp -p tcp --dport ${dport} -j ACCEPT
	iptables -I INPUT -m state --state NEW -m udp -p udp --dport ${dport} -j ACCEPT
	/etc/init.d/iptables save
	/etc/init.d/iptables restart
echo '多端口开放执行完毕';
fi
exit 0