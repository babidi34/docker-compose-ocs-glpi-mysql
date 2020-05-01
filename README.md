# docker-compose ocs-glpi-mysql

Docker compose OCS/GLPI + mysql avec 2 base de données dans le même conteneur (ocsweb & glpidb)


1) git clone https://gitlab.com/babidi34/docker-compose-ocs-glpi-mysql

2) cd docker-compose-ocs-glpi-mysql

3)  ./setup.sh

**GLPI est mappé sur le port 80 du localhost, OCS sur le port 90 du localhost et mysql 3306 du localhost.**


Remarque : URL pour OCS :  http://localhost:90/ocsreports


Connexion base de données GLPI :

*Serveur base de données : mysql
Nom d'utilisateur : glpi_user
mot de passe : glpi

base de données : glpidb


login/mdp glpi : glpi/glpi

login/mdp ocs : admin/admin*
