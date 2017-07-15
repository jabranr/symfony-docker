#!/bin/bash

function info {
    echo -e "\033[0;30;42m"
    echo -e "\n $1 \n"
    echo -e "\033[0m"
}

info "Welcome! Installing Symfony framework"

if [ $# == 0 ] ; then
    PROJECT_NAME=symfony
else
    PROJECT_NAME=$1
fi

composer create-project symfony/framework-standard-edition $PROJECT_NAME

info "Successfully installed Symfony into \"$PROJECT_NAME\""
