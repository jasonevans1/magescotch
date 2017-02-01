#!/usr/bin/env bash

chown vagrant:vagrant /home/vagrant/.composer/auth.json
chown -R vagrant:vagrant /home/vagrant

cp -r /opt/magento2 /var/www/public/

cp /home/vagrant/magemalt_version.txt /var/www/public/magemalt_provisioned_version.txt
