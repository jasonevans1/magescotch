#!/usr/bin/env bash

apt-get install -y ruby-sass
apt-get install -y ruby-compass
gem install compass
composer config --global process-timeout 2000
/bin/bash /var/www/public/magento2/firstRun
