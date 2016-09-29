#!/bin/bash

echo "Downloading PIM 1.6.* CE, last stable... (takes a minute or two)"
cd /home/docker
wget -q http://download.akeneo.com/pim-community-standard-v1.6-latest-icecat.tar.gz
tar -xzf pim-community-standard-v1.6-latest-icecat.tar.gz
rm pim-community-standard-v1.6-latest-icecat.tar.gz
mv pim-community-standard pim
chmod 775 -R pim
chown docker:docker -R pim