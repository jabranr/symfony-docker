#!/usr/bin/env bash

function info {
    echo -e "\033[0;30;42m"
    echo -e "\n $1 \n"
    echo -e "\033[0m"
}

info "Welcome! Installing Symfony framework..."

if [ $# == 0 ] ; then
    PROJECT_NAME=symfony-app
else
    PROJECT_NAME=$1
fi

curl -O https://getcomposer.org/composer.phar
php composer.phar create-project symfony/framework-standard-edition $PROJECT_NAME

info "Successfully installed Symfony into \"$PROJECT_NAME\"!"

info "Updating docker configurations..."
sed -i -e "s/symfony-app/$PROJECT_NAME/g" php-apache/docker-compose.yml
sed -i -e "s/symfony-app/$PROJECT_NAME/g" php-nginx/docker-compose.yml

info "Done! Run \`docker-compose up\` inside \`php-apache/\` or \`php-nginx/\` to start using."
