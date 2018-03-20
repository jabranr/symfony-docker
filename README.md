![image](https://user-images.githubusercontent.com/2131246/28238170-ef3578e8-6945-11e7-869c-5772725c3036.png)

Development setup for Symfony framework using docker. OPCache and Xdebug are enabled out of the box to help you start cracking on the code. 

The setup has supports for combination of `PHP CGI with Apache` or `PHP fpm with nginx`.

# Install Symfony
Use `setup.sh` in terminal to install latest Symfony framework standard edition. This is just a helper script. You can use other preferred ways to install Symfony framework. A custom project name can be given as an argument i.e.

```bash
./setup.sh my-project
```
OR use default name (symfony-app) for the project
```bash
./setup.sh
```

# Setup docker with Apache

```bash
cd php-apache/
docker-compose up -d
```
This will setup docker with latest PHP and Apache. The setup can be used for dev purpose out of the box. [http://localhost:8080](http://localhost:8080)

![image](https://user-images.githubusercontent.com/2131246/28238568-ae13ca32-694e-11e7-9056-b953b6be1c58.png)

# Setup docker with nginx & PHP-fpm

```bash
cd php-nginx/
docker-compose up -d
```
This will setup docker with latest PHP fpm and nginx. The setup can be used for dev purpose out of the box. [http://localhost:8080](http://localhost:8080)


![image](https://user-images.githubusercontent.com/2131246/28238424-febe1c20-694a-11e7-9cd0-962b4f52c150.png)

> Make sure that only one of the above is running at a time. You can run both setup though but may run into issues. 

# OPcache

OPcache is enabled out of the box. View OPcache status at [http://localhost:8080/opcache.php](http://localhost:8080/opcache.php). Thanks to [Rasmus Lerdorf](https://github.com/rlerdorf/opcache-status)

![image](https://user-images.githubusercontent.com/2131246/37666535-b26f8ee6-2c57-11e8-9bb2-028bc8351904.png)

# Xdebug

Xdebug is enabled out of the box! The logs for Xdebug can be found at `/tmp/xdebug.log`.

![image](https://user-images.githubusercontent.com/2131246/37686925-6fb98518-2c91-11e8-8099-88d191681456.png)

MIT License
&copy; Jabran Rafique 2017
