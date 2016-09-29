#!/bin/bash

cd /home/docker/pim
echo "Clean the install"
rm -rf app/archive/*
rm -rf app/cache/*
rm -rf app/file_storage/*
rm -rf app/logs/*
rm -rf web/bundles/*
rm -rf web/css/*
rm -rf web/js/*
rm -rf web/media/*

sudo service mysql restart

mysql -u root -e "CREATE DATABASE IF NOT EXISTS akeneo_pim; GRANT ALL PRIVILEGES ON akeneo_pim.* TO akeneo_pim@localhost IDENTIFIED BY 'akeneo_pim';"

echo "Initialize the PIM"
app/console pim:install --force
app/console asset:install --symlink
