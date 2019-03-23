# url_recorder
to record url on a VPS etc.

Debian/Ubuntu: apt-get install libpcap-dev -y
CentOS:yum install libpcap-devel -y

mkdir url_recorder
wget -N --no-check-certificate https://github.com/tiandaji/url_recorder/blob/master/url_recorder.c

然后
gcc url_recorder.c -lpcap -o url_recorder 

命令行参数是网卡名字，我这里是eth0，需要root权限
./url_recorder eth0
