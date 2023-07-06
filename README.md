# NestBox (Docker)

## Overview

Docker image that can be used to run NestJS apps.

This image comes with `nano` and `bash` pre-installed for better file debugging.

## How to Setup

Add your NestJS app service in the following manner to your `docker-compose.yml` file.

```yaml
services:
  myapp:
    container_name: myapp_backend # Replace myapp with your app's name.
    restart: always
    build: .
    environment:
      - APP_ENV=development
      - APP_PORT=9000 # Replace if you want to run app on a different port
    volumes:
      - ./src:/var/www/myapp/src
      - ./test:/var/www/myapp/test
    working_dir: /var/www/myapp
    ports:
      - "9001:9000" # Replace if your app is running on a different port
```

Add a `Dockerfile` to your root folder like this.

```dockerfile
FROM crowdlinker/nestbox

# Create app directory
WORKDIR /var/www/myapp

# Install app dependencies
COPY package.json yarn.lock ./
RUN yarn --pure-lockfile

# Copy important files
COPY .eslintrc.js nest-cli.json tsconfig.json tsconfig.build.json ormconfig.ts ./

# Copy env
COPY .env.docker /var/www/myapp/.env

# Entrypoint command
CMD [ "yarn", "start:dev", "--preserveWatchOutput" ]
```

## Installed Libraries

- node (v18.16.1) / npm (v9.5.1)
- yarn (v1.22.19)

### Important Information

1. `./docker-prompt` is used for adding colors to docker shell.

### Contributors

- Team @Crowdlinker ([Github](https://github.com/CrowdLinker) | [Bitbucket](https://bitbucket.org/crowdlinker/))
