# Projet 2024-SFA-Pokemon-Directus

Ce projet est une application de collection de Pokémon utilisant Directus pour la gestion des données et un serveur
Apache avec PHP. La base de données MySQL est utilisée pour stocker les données, et phpMyAdmin est fourni pour la
gestion de la base de données. Le projet supporte également SSL pour des connexions sécurisées.

## Prérequis

- Docker 
- Docker Compose

Voici le lien pour installer Docker et Docker Compose sur votre machine : https://www.docker.com/products/docker-desktop/

## Structure du Projet

- `docker-compose.yml`: Fichier de configuration Docker Compose pour démarrer les services nécessaires.
- `www/`: Répertoire pour les fichiers PHP.
- `uploads/`: Répertoire pour les fichiers téléchargés par Directus.
- `mysql_data/`: Répertoire pour les données MySQL.
- `init.sql`: Script SQL pour initialiser la base de données MySQL.
- `certs/`: Répertoire pour les certificats SSL.
- `nginx.conf`: Fichier de configuration pour Nginx.


## Démarrer le Projet

1. Clonez le dépôt GitHub sur votre machine locale :
   ```bash
   git clone https://github.com/votre-utilisateur/2024-SFA-Pokemon-Directus.git
   cd 2024-SFA-Pokemon-Directus
   ```
2. Assurez-vous que Docker et Docker Compose sont installés et en cours d'exécution sur votre machine.
3. Démarrez les services Docker :
   ```bash
   docker compose up -d
   # ou pour les ancienne version de docker-compose
   docker-compose up -d
   ```

Cette commande démarrera les services suivants :
- Directus sur le port `8055` (HTTP) et `443` (HTTPS)
- MySQL sur le port `3306`
- phpMyAdmin sur le port `8080`
- Apache avec PHP sur le port `80`


## Accéder à Directus
 > Il faut attendre 2-3 minutes pour que les services soient prêts.
 Ensuite, vous pouvez accéder à Directus via votre

- URL : 
  - [https://localhost](https://localhost)
  - [http://localhost:8055](http://localhost:8055)
- Identifiants de connexion :
    - Email : `bulbi@pokemon.com`
    - Mot de passe : `bulbi`

## Accéder aux autres services

### phpMyAdmin

- URL : [http://localhost:8080](http://localhost:8080)
- Identifiants de connexion :
    - Nom d'utilisateur : `root`
    - Mot de passe : `rootpassword`

### Apache avec PHP

- URL : [http://localhost](http://localhost)
- Placez vos fichiers PHP dans le répertoire `www` sur votre machine locale pour qu'ils soient servis via Apache.



## Initialisation de la Base de Données

Le script `init.sql` est automatiquement exécuté lors du démarrage du conteneur MySQL pour configurer l'utilisateur et
les permissions nécessaires.

## Arrêter les Services

Pour arrêter les services Docker, exécutez la commande suivante :

```bash
docker compose down
```

## Dépannage

- Si vous rencontrez des problèmes de connexion à MySQL, assurez-vous que le fichier `init.sql` a été exécuté
  correctement et que les permissions sont correctement configurées.
- Pour voir les logs des conteneurs Docker, utilisez la commande suivante :

  ```bash
  docker-compose logs
  ```

