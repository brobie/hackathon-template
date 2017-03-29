sudo composer install
sudo find var vendor pub/static pub/media app/etc -type f -exec chmod g+w {} \;
sudo find var vendor pub/static pub/media app/etc -type d -exec chmod g+ws {} \;
sudo chmod u+x bin/magento
echo "create database hackathon" | mysql -u root -proot
cd /var/www/html/www/public/hackathon/bin
./magento setup:install --backend-frontname adminpanel --db-host localhost --db-name hackathon --db-user root --db-password root --base-url http://hackathon.dev/hackathon-template/ --base-url-secure http://hackathon.dev/hackathon-template/ --admin-user hackathon --admin-password hackathon123 --admin-email email@example.com --admin-firstname Hackathon --admin-lastname Developer