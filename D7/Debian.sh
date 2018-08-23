!#/bin/bash
cd /var/www/

// install stuff
apt-get update && apt-get upgrade -y
apt-get install -y git apache2 drush fail2ban ufw
drush dl drupal-7.x

//basic security
ufw allow 80 && ufw allow 22 && ufw allow 443 && ufw enable
service fail2ban start

//blast-off
service apcahe2 start
mv drupal* /var/www/drupal
