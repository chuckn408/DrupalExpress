!#/bin/bash
cd /var/www/

// install stuff
pacman -Syu
pacman -S git apache2 drush fail2ban ufw
drush dl drupal-7.x

//basic security
ufw allow 80 && ufw allow 22 && ufw allow 443 && ufw enable
systemctl start fail2ban

//blast-off
systemctl start apache2
mv drupal* /var/www/drupal
