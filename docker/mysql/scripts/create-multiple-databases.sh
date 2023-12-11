#!/usr/bin/env bash

mysql --user=root --password="$MYSQL_ROOT_PASSWORD" <<-EOSQL
    CREATE DATABASE IF NOT EXISTS eshop;
    CREATE DATABASE IF NOT EXISTS eshop_test;
    CREATE DATABASE IF NOT EXISTS eshop_telescope;

    CREATE USER IF NOT EXISTS 'eshop'@'%' IDENTIFIED BY 'eshop';
    GRANT ALL PRIVILEGES ON *.* TO 'eshop'@'%';

    FLUSH PRIVILEGES;
EOSQL