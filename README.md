# Symfony docker setup

Setup boilerplate for Symfony framework in docker using combination of PHP/Apache or PHP-FPM/Nginx.

# Install Symfony
Use `setup.sh` in terminal to install Symfony framework. This is just a helper script. Use any personal preferences to install Symfony if you wish. A custom project name can be given as an argument i.e.

```bash
$ ./setup.sh my-project
```
OR use default name (symfony) for the project
```bash
$ ./setup.sh
```

# Setup docker with Apache

> Make sure to update name of the project directory in `php-apache/docker-compose.yml` under `volumes:` from default `symfony` to whatever you have used for symfony installation.

```bash
cd php-apache/
docker-compose up -d
```
This will setup docker with PHP 7 latest and Apache 2.4. The setup can be used for dev purpose out of the box. [http://localhost:8000](http://localhost:8000)

# Setup docker with nginx & PHP-fpm

> Make sure to update name of the project directory in `php-nginx/docker-compose.yml` under `volumes:` from default `symfony` to whatever you have used for symfony installation.

```bash
cd php-nginx/
docker-compose up -d
```
This will setup docker with latest PHP 7 and nginx. The setup can be used for dev purpose out of the box. [http://localhost:8080](http://localhost:8080)


> Make sure that only one of the above is running at a time. You can run both setup though but may run into issues. 

MIT License
&copy; Jabran Rafique 2017
