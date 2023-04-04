CREATE DATABASE IF NOT EXISTS ${glpi_database_name};
CREATE USER '${glpi_database_user}'@'%' IDENTIFIED WITH mysql_native_password BY '${glpi_database_password}';
GRANT ALL PRIVILEGES ON ${glpi_database_name}.* TO '${glpi_database_user}'@'%';
FLUSH PRIVILEGES;

CREATE DATABASE IF NOT EXISTS ${ocs_database_name};
CREATE USER '${ocs_database_user}'@'%' IDENTIFIED WITH mysql_native_password BY '${ocs_database_password}';
GRANT ALL PRIVILEGES ON ${ocs_database_name}.* TO '${ocs_database_user}'@'%';
FLUSH PRIVILEGES;