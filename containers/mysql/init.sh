#!/bin/sh

tfile=`mktemp`
  
cat <<EOT >> $tfile
USE mysql;
FLUSH PRIVILEGES;
GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY "$MYSQL_ROOT_PASSWORD" WITH GRANT OPTION;
GRANT ALL PRIVILEGES ON *.* TO 'root'@'localhost' WITH GRANT OPTION;
UPDATE user SET password=PASSWORD("") WHERE user='root' AND host='localhost';
EOT

mysql_install_db --user=root > /dev/null  
mkdir -p /run/mysqld  
/usr/bin/mysqld --user=root --bootstrap --verbose=0 < $tfile  

rm -f $tfile

exec /usr/bin/mysqld --user=root --console