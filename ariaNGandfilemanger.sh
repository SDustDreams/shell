

#新建虚拟主机文件夹
mkdir /usr/local/caddy/www;
mkdir /usr/local/caddy/www/aria2;


#写入到caddy配置文件
echo ":8888 {
root /usr/local/caddy/www/aria2
timeouts none
gzip
#basicauth / apple apple
#browse
filemanager /Download ./usr/local/caddy/www/aria2/Download {
    show /usr/local/caddy/www/aria2/Download
  # apple:
    no_auth
    locale zh-cn
    allow_new true
    allow_edit true
    allow_publish true
    allow_commands true
    allow_command mv
}
}" > /usr/local/caddy/Caddyfile;


# 新建Aria2下载文件夹 并进入文件夹
mkdir /usr/local/caddy/www/aria2/Download;
cd /usr/local/caddy/www/aria2;

#安装unzip
apt-get install unzip


#下载并解压ariaNG文件
wget -N --no-check-certificate "https://raw.githubusercontent.com/SDustDreams/shell/master/ariaNG/AriaNg.zip";
unzip AriaNg.zip;
rm -rf AriaNg.zip;


#赋予虚拟主机文件夹权限
chmod -R 755 /usr/local/caddy/www/aria2;

#启动caddy
/etc/init.d/caddy start;
service caddy restart;


echo '安装成功，打开http://vps_ip:8888/Download即可管理文件
                  http://vps_ip:8888管理ariaNG ';

