![image](https://user-images.githubusercontent.com/2131246/28238170-ef3578e8-6945-11e7-869c-5772725c3036.png)

Run and develop your Symfony application locally with docker using combination of PHP/Apache or PHP-FPM/Nginx with Xdebug.

- PHP 8 / PHP-FPM
- Symfony 5+
- Xdebug
- Apache / Nginx

## Prerequisites
- [Docker](https://www.docker.com/)
- [Docker compose](https://docs.docker.com/compose/)

## Setup

**Table of Content**

1. [Existing symfony application](#existing-symfony-application)
2. [Start PHP Apache](#php-apache)
3. [Start PHP-FPM Nginx](#php-fpm-nginx)
4. [Setup a new symfony application](#new-symfony-application)
5. [Shutdown/teardown](#shutdownteardown)

### Existing symfony application

This setup works with both an existing and new symfony applications. Here is an expected project structure:

```sh
|- symfony-docker/
  |- symfony_app/
  |- php-apache/
  |- php-nginx/
```

You only need one combination to start your development environment.

- Copy `php-apache` into your symfony app directory for PHP/Apache
- Copy `php-nginx` into your symfony app directory for PHP-FPM/Nginx

Choose commands from following for relevant environment:

### PHP Apache

```sh
cd symfony-docker/

# Start PHP with Apache
docker-compose -f php-apache/docker-compose.yml up

# Rebuild docker image then start PHP with Apache
docker-compose -f php-apache/docker-compose.yml up --build
```

### PHP-FPM Nginx

```sh
cd symfony-docker/

# Start PHP-FPM with Nginx
docker-compose -f php-nginx/docker-compose.yml up

# Rebuild docker image then start PHP-FPM with Nginx
docker-compose -f php-nginx/docker-compose.yml up --build
```

The symfony app will be available at http://localhost:8080


> If you do not already have a symfony app then follow next section to create a new symfony app.

### New symfony application

It's very easy to start a new symfony app.

Open a new terminal and install Symfony with following commands:

```sh
# it will create a new symfony app in `symfony_app` directory
docker exec symfony-docker bash -c "composer create-project symfony/skeleton:\"6.3.*\" ."
```

If you are building a web application then also run following:

```sh
docker exec symfony-docker bash -c "composer require webapp"
```

Refresh your browser at http://localhost:8080 to see symfony welcome page.

> You can rename the `symfony_app` to whatever you like but make sure to update the references in `docker-compose.yml` files.


![image](https://github.com/jabranr/symfony-docker/assets/2131246/915abf2d-267f-4602-941a-8252698f8211)

> You can only run one of the above combinations.

### Shutdown/teardown

Use following command relevant to your development environment to shutdown/teardown:

```sh
# Shutdown/teardown PHP/Apache
docker-compose -f php-apache/docker-compose.yml down

# Shutdown/teardown PHP-FPM/Nginx
docker-compose -f php-nginx/docker-compose.yml down
```

MIT License
&copy; Jabran Rafique since 2017
