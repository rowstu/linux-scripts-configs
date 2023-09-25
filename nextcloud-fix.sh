# scan and fix db
sudo -u http php occ files:scan --all

# fix perms
chown -R http:http /var/lib/nextcloud
chown -R http:http /etc/webapps/nextcloud
chown -R http:http /usr/share/webapps/nextcloud
