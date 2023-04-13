# GLPI and OCS Inventory Docker Compose Project

This project sets up a complete environment for GLPI and OCS Inventory using Docker Compose, with both services running on HTTPS. The setup consists of MySQL, GLPI, and OCS services.

![OCS-GLPI-MYSQL](https://i0.wp.com/linux-man.fr/wp-content/uploads/2020/12/ocs.glpi_.mysql_.png?w=300&ssl=1 "OCS-GLPI-MYSQL")


## Prerequisites

- Docker (version 20.10 or later)
- Docker Compose (version 1.29 or later)

## Setup

1. Clone the repository or download the project files.
2. In the project directory, locate the `secrets.env` file. This file contains the environment variables required for setting up the MySQL, GLPI, and OCS services, such as database names, users, and passwords. Modify the values in `secrets.env` according to your requirements.
3. Ensure that the SSL certificate files `ssl.crt` and `ssl.key` are present in the `ssl/` directory. If they are missing, the `setup.sh` script will generate self-signed SSL certificates using OpenSSL. You can also provide your own SSL certificates by placing them in the `ssl/` directory before running the script.
4. Run the `setup.sh` script to build and start the Docker containers:

   ```bash
   ./setup.sh
   ```

The script will replace the placeholders in the sql/initdb.sql.template file with the values from secrets.env and create the final SQL file sql/initdb.sql. It will then build and start the Docker containers using Docker Compose.

## Accessing the Services

Once the containers are up and running, you can access the GLPI and OCS Inventory web interfaces using the following URLs:
- GLPI: https://localhost/glpi
- OCS Inventory: https://localhost:8443/ocsreports

The default credentials for GLPI and OCS Inventory are:

- GLPI:
    - Username: glpi
    - Password: glpi
- OCS Inventory:
    - Username: admin
    - Password: admin

## Customizing Usernames and Passwords

To change the default usernames and passwords for GLPI and OCS Inventory, follow these steps:

1. Open the secrets.env file in a text editor.
2. Modify the following environment variables according to your requirements:
    - For GLPI:
        - glpi_database_name
        - glpi_database_user
        - glpi_database_password
    - For OCS Inventory:
        - OCS_DB_NAME
        - OCS_DB_USER
        - OCS_DB_PASS
        - OCS_DB_SERVER
3. Save the changes and close the text editor.
4. Re-run the setup.sh script to apply the changes:
    ```bash
   ./setup.sh
   ```

## Stopping and Removing the Containers

To stop and remove the containers, use the following Docker Compose command:

```bash
    docker-compose down -v
```

## License

This project is provided under the MIT License.