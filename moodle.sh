#!bin/bash
sudo wget https://download.moodle.org/download.php/stable405/moodle-latest-405.zip -O moodle.zip
sudo unzip moodle.zip -d /var/www/moodle
sudo chown -R root /var/www/moodle
sudo chmod -R 0755 /var/www/moodle
mkdir /var/www/moodledata
chmod 0777 /var/www/moodledata
chwon www-data /var/www/moodle
sudo -u www-data /usr/bin/php /var/www/moodle/admin/cli/install.php
