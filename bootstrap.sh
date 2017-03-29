sudo composer install
sudo find var vendor pub/static pub/media app/etc -type f -exec chmod g+w {} \;
sudo find var vendor pub/static pub/media app/etc -type d -exec chmod g+ws {} \;
sudo chmod u+x bin/magento
echo "create database hackathon" | mysql -u dev -pdev
cd /var/www/html/hackathon-template/bin
./magento setup:install --backend-frontname adminpanel --db-host localhost --db-name hackathon --db-user dev --db-password dev --base-url http://192.168.33.10/hackathon-template/ --base-url-secure https://192.168.33.10/hackathon-template/ --admin-user hackathon --admin-password hackathon123 --admin-email email@example.com --admin-firstname Hackathon --admin-lastname Developer

