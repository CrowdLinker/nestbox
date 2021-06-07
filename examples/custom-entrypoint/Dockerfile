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

# Run a custom script
CMD [ "sh", "start.sh" ]
