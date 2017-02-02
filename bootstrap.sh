#!/usr/bin/env bash

sed -i 's/^mesg n$/tty -s \&\& mesg n/g' /root/.profile

chown vagrant:vagrant /home/vagrant/.composer/auth.json
chown -R vagrant:vagrant /home/vagrant

cp -r /opt/magento2 /var/www/public/

cp /home/vagrant/magemalt_version.txt /var/www/public/magemalt_provisioned_version.txt

cd /var/www/public
for DIR in *; do
    [ -d "$DIR" ] && sh "$DIR"/vagrant_bootstrap.sh
done
exit 0
