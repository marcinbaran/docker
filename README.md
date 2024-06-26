# Docker-Symfony-Stack

With this Docker-Symfony-Stack it's possible to setup a local development environment in seconds. Every component is selected for running Symfony 7 in a flavored way.

## Getting started
Copy the .env.dist file and edit the entries to your needs:
```
cp .env.dist .env
```

Only start docker-compose to start your environment:
```
docker compose up -d
```

After booting the container, you can use composer and the symfony cli insight the php-apache container:
```
docker exec -it symfony-apache-php bash
 -> composer create-project symfony/skeleton:"7.0.*" .
 -> composer require webapp
```

## Installed Packages
You have three container running: Apache-PHP, MariaDB and Adminer.
- [Web-App](http://localhost)
- [Adminer](http://localhost:8080)
