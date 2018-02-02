#!/bin/bash
#自写自用脚本
echo "
---------------------------------------------------------
请选择需要安装的程序，输入相应序列号回车
---------------------------------------------------------
【1】SSR安装

【3】BBR算法加速+最新内核

【4】aria2后端搭建

【5】centos更换内核（锐速）

【6】锐速安装程序

【7】锐速卸载程序

【8】多端口开放

【9】caddy安装

【10】一键安装ariaNG和filemanger

【11】一键安装libsodium
---------------------------------------------------------
"
read os
clear

url='https://github.com/SDustDreams/shell/master'

#(SSR一键安装程序)
if test $os == 1 ;then
echo '******正在下载SSR，请等待几分钟******';
wget -N --no-check-certificate ${url}/ssr.sh;
chmod +x ssr.sh;
echo -e '下载完成：			  [\033[32m  OK  \033[0m]';
echo '******正在安装程序******';
bash ssr.sh;
fi

#BBR算法加速
if test $os == 3 ;then
echo '******正在下载BBR算法加速，请等待几分钟******';
wget -N --no-check-certificate ${url}/bbr.sh;
chmod +x bbr.sh;
echo -e '下载完成：			  [\033[32m  OK  \033[0m]';
echo '******正在安装程序******';
bash bbr.sh;
fi

#aria2后端安装
if test $os == 4 ;then
echo '******正在下载aria2后端，请等待几分钟******';
wget -N --no-check-certificate ${url}/aria2.sh;
chmod +x aria2.sh;
echo -e '下载完成：			  [\033[32m  OK  \033[0m]';
echo '******正在安装程序******';
bash aria2.sh;
fi

#centos更换内核
if test $os == 5 ;then
echo '******正在下载centos内核更换，请等待几分钟******';
wget -N --no-check-certificate ${url}/ruisu.sh;
echo -e '下载完成：			  [\033[32m  OK  \033[0m]';
echo '******正在安装程序******';
bash ruisu.sh;
fi

#锐速安装程序
if test $os == 6 ;then
echo '******正在下载锐速程序，请等待几分钟******';
wget -N --no-check-certificate ${url}/serverspeeder.sh;
echo -e '下载完成：			  [\033[32m  OK  \033[0m]';
echo '******正在安装程序******';
bash serverspeeder.sh;
fi

#锐速卸载程序
if test $os == 7 ;then
echo '******正在卸载锐速程序，请等待几分钟******';
chattr -i /serverspeeder/etc/apx* && /serverspeeder/bin/serverSpeeder.sh uninstall -f;
echo -e '卸载完成：			  [\033[32m  OK  \033[0m]';
fi

#多端口开放
if test $os == 8 ;then
echo '******正在开放服务器端口，请等待几分钟******';
wget -N --no-check-certificate ${url}/dk.sh;
bash dk;
fi

#caddy安装
if test $os == 9 ;then
echo '******正在下载caddy，请等待几分钟******';
wget -N --no-check-certificate ${url}/caddy.sh;
chmod +x caddy.sh;
echo -e '下载完成：			  [\033[32m  OK  \033[0m]';
echo '******正在安装程序******';
bash caddy.sh;
fi

#一键安装ariaNG和filemanger
if test $os == 10 ;then
echo '******正在安装ariaNG，请等待几分钟******';
wget -N --no-check-certificate ${url}/ariaNGandfilemanger.sh;
chmod +x ariaNGandfilemanger.sh;
bash ariaNGandfilemanger.sh;
fi

#一键安装libsodium
if test $os == 11 ;then
echo '******正在安装libsodium，请等待几分钟******';
wget -N --no-check-certificate ${url}/libsodium.sh;
chmod +x libsodium.sh;
bash libsodium.sh;
fi

exit 0
