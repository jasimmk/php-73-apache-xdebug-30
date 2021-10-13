# php-73-apache-xdebug-30

If you develop applications using PHPStorm and Intellij, and use docker-compose to run php application server. Keeping base image as this help you to debug PHP applications.

```
docker pull jasimmk/php-73-apache-xdebug-30
```

## An example docker-compose configuration for debug purpose

```
version: '3.1'
services:
  example-service:
    build: jasimmk/php-73-apache-xdebug-30
    container_name: example-service
    hostname: example-service
    restart: unless-stopped
    volumes:
      - ./src/example-service:/var/www/html
    ports:
      - "8080:80"
    depends_on:
      - mysql
```