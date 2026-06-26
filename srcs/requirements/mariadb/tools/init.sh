#!/bin/sh

# stop the sript if a command fail
set -e

until mysqladmin ping -u root --silent; do
    sleep 1
done

mysql -u root <<EOF
ALTER USER 'root'@'localhost' IDENTIFIED BY '${MARIA_ROOT_PASSWORD}';

CREATE DATABASE IF NOT EXISTS wordpress;

CREATE USER IF NOT EXISTS '${MARIA_USER}'@'%' IDENTIFIED BY '${MARIA_PASSWORD}';

GRANT ALL PRIVILEGES ON wordpress.* TO '${MARIA_USER}'@'%';

FLUSH PRIVILEGES;
EOF

exec mysqld_safe