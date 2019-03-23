# url_recorder
===========

把HTTP请求的URL全部记录下来，我是在vps上用的~~
日志记录在 “/var/log/url_record.txt”

程序守护进程方式运行在后台

<pre><code>
Debian/Ubuntu: apt-get install libpcap-dev -y
CentOS:yum install libpcap-devel -y

mkdir url_recorder
wget -N --no-check-certificate https://github.com/tiandaji/url_recorder/blob/master/url_recorder.c

然后
gcc url_recorder.c -lpcap -o url_recorder 

命令行参数是网卡名字，我这里是eth0，需要root权限
./url_recorder eth0
</code></pre>
