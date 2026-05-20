# WikiFrog Database

Ce dossier contient les migrations SQL Flyway utilisees par l'API.

Ne modifie pas une migration deja appliquee en base. Ajoute plutot une nouvelle migration `V4__...sql`, `V5__...sql`, etc.

## Lancer les migrations avec Docker

```powershell
docker build -t wikifrog-database .
docker run --rm `
  -e FLYWAY_URL="jdbc:postgresql://192.168.1.21:5432/wikifrog" `
  -e FLYWAY_USER="wikifrog_app" `
  -e FLYWAY_PASSWORD="<mot_de_passe_postgres>" `
  wikifrog-database migrate
```

## Lancer les migrations depuis Unraid

Tu peux creer un container base sur l'image `wikifrog-database` et lui passer les variables `FLYWAY_URL`, `FLYWAY_USER`, `FLYWAY_PASSWORD`, avec la commande `migrate`.
