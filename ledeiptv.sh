#!/bin/sh

#echo 欢迎使用本脚本
ping 127.0.0.1 -c 2 > /dev/null
echo 本脚本只适用于是Koolshare LEDE固件，其他固件请勿运行本脚本
ping 127.0.0.1 -c 2 > /dev/null
echo 本提示保留5秒，如果您不是Koolshare LEDE固件请立刻按下Ctrl+C中止本脚本
ping 127.0.0.1 -c 10 > /dev/null
echo 本脚本适用于上海电信需要AB面认证的IPTV，其他地区请按实际情况修改脚本
ping 127.0.0.1 -c 2 > /dev/null
echo 使用前请确认光猫已经设置桥接
ping 127.0.0.1 -c 2 > /dev/null

#脚本提示
echo 正在增加IPTV开机自启动运行脚本
echo 正在下载新文件
#wget -q --no-check-certificate https://raw.githubusercontent.com/ArronYin/4K-IPTV/master/lede.sh
wget -q --no-check-certificatehttps://raw.githubusercontent.com/beilsn/4K-IPTV/master/lede.sh
#设置权限
chmod -R 0755 lede.sh 
sh lede.sh
#完成提示
echo 成功

#延迟运行
ping 127.0.0.1 -c 2 > /dev/null


#提示成功
ping 127.0.0.1 -c 2 > /dev/null
echo 脚本运行完成，如果光猫已经设置完毕，您可以把IPTV接在光猫lan口

#延迟运行
ping 127.0.0.1 -c 2 > /dev/null
#空行
echo

#运行提示
echo 正在重启路由器，请待路由器重启成功后，重新启动IPTV
rm -rf lede.sh*
rm -rf ledeiptv.sh*
#延迟运行
ping 127.0.0.1 -c 2 > /dev/null
#重启路由器
reboot > /dev/null
