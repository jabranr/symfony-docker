![image](https://user-images.githubusercontent.com/2131246/28238170-ef3578e8-6945-11e7-869c-5772725c3036.png)

Boilerplate for Symfony framework in docker using combination of PHP/Apache or PHP-FPM/Nginx.

# Install Symfony
Use `setup.sh` in terminal to install Symfony framework. This is just a helper script. Use any personal preferences to install Symfony if you wish. A custom project name can be given as an argument i.e.

```bash
./setup.sh my-project
```
OR use default name (symfony-app) for the project
```bash
./setup.sh
```

# Setup docker with Apache

> Make sure to update name of the project directory in `php-apache/docker-compose.yml` under `volumes:` from default `symfony` to whatever you have used for symfony installation.

```bash
cd php-apache/
docker-compose up -d
```
This will setup docker with PHP 7 latest and Apache 2.4. The setup can be used for dev purpose out of the box. [http://localhost:8080](http://localhost:8080)

![image](https://user-images.githubusercontent.com/2131246/28238568-ae13ca32-694e-11e7-9056-b953b6be1c58.png)

# Setup docker with nginx & PHP-fpm

> Make sure to update name of the project directory in `php-nginx/docker-compose.yml` under `volumes:` from default `symfony` to whatever you have used for symfony installation.

```bash
cd php-nginx/
docker-compose up -d
```
This will setup docker with latest PHP 7 and nginx. The setup can be used for dev purpose out of the box. [http://localhost:8080](http://localhost:8080)


![image](https://user-images.githubusercontent.com/2131246/28238424-febe1c20-694a-11e7-9cd0-962b4f52c150.png)

> Make sure that only one of the above is running at a time. You can run both setup though but may run into issues. 

# OPcache
OPcache is enabled out of the box. View OPcache status at [http://localhost:8080/opcache.php](http://localhost:8080/opcache.php). Thanks to [Rasmus Lerdorf](https://github.com/rlerdorf/opcache-status)

![image](https://user-images.githubusercontent.com/2131246/37666535-b26f8ee6-2c57-11e8-9bb2-028bc8351904.png)

#Xdebug
Xdebug is enabled out of the box!

MIT License
&copy; Jabran Rafique 2017
