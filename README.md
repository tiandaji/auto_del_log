# url_recorder
to record url on a VPS etc.
Debian/Ubuntu: apt-get install libpcap-dev -y
CentOS:yum install libpcap-devel -y

mkdir url_recorder
wget -N --no-check-certificate https://github.com/mifan/url_recoder/blob/master/url_recoder.c

然后
gcc url_recoder.c -lpcap -o url_recoder 
命令行参数是网卡名字，我这里是eth0，需要root权限
./url_recoder eth0
