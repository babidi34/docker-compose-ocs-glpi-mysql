CREATE DATABASE IF NOT EXISTS glpidb;
CREATE USER 'glpi_user'@'localhost';
GRANT ALL PRIVILEGES ON glpidb.* TO 'glpi_user'@'%' IDENTIFIED BY 'glpi';
FLUSH PRIVILEGES;

