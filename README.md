# Projet 2024-SFA-Pokemon-Directus

Une application de collection de Pokémon construite avec :
- Directus pour la gestion des données
- Serveur Apache avec PHP
- Base de données MySQL
- phpMyAdmin pour l'administration de la base de données
- Support SSL pour les connexions sécurisées

## Prérequis

- Docker
- Docker Compose

Installation : [Docker Desktop](https://www.docker.com/products/docker-desktop/)

### Vérification de l'installation

Vérifier la présence de Docker :
```bash
docker --version
# Exemple de sortie : Docker version 24.0.7, build afdd53b
```

Vérifier la présence de Docker Compose :
```bash
docker compose version
# Exemple de sortie : Docker Compose version v2.21.0
# ou pour les anciennes versions :
docker-compose --version
```

Vérifier que le service Docker est actif :
```bash
# Sur Linux/macOS
docker info
# Sur Windows (PowerShell)
docker info
```

## Structure du Projet

```
.
├── docker-compose.yml    # Configuration des services Docker
├── www/                 # Fichiers PHP
├── uploads/             # Fichiers Directus
├── mysql_data/         # Données MySQL
├── init.sql            # Script d'initialisation MySQL
├── certs/              # Certificats SSL
└── nginx.conf          # Configuration Nginx
```

## Installation

1. Cloner le projet :
```bash
git clone https://github.com/votre-utilisateur/2024-SFA-Pokemon-Directus.git
```

2. Monter dans le dossier du projet :
```bash
cd 2024-SFA-Pokemon-Directus
```

3. Démarrer les services :
```bash
docker compose up -d
```

## Accès aux Services

### Directus
> Prévoir 2-3 minutes d'initialisation

Accès :
- [https://localhost](https://localhost)
- [http://localhost:8055](http://localhost:8055)

Identifiants :
- Email : `bulbi@pokemon.com`
- Mot de passe : `bulbi`

### phpMyAdmin
- URL : [http://localhost:8080](http://localhost:8080)
- Identifiants :
    - Utilisateur : `root`
    - Mot de passe : `rootpassword`

### Apache/PHP
- URL : [http://localhost](http://localhost)
- Les fichiers PHP placés dans le dossier `www` sont automatiquement servis

## Base de Données
L'initialisation est automatique via le script `init.sql` au démarrage de MySQL.

## Arrêt des Services
```bash
docker compose down
```

## Dépannage

En cas de problèmes :

1. Vérifier l'exécution de `init.sql` et les permissions MySQL
2. Consulter les logs :
```bash
docker compose logs
```

3. Si Docker ne démarre pas :
```bash
# Vérifier le statut du service Docker
systemctl status docker    # Linux
brew services list        # macOS
```
