# Stremio Node 8.x
FROM stremio/node-base

# Meta
MAINTAINER Ivo Georgiev <ivo@strem.io>
LABEL Description="Stremio OpenSubtitles" Vendor="Smart Code ltd" Version="0.21.0"

# Create app directory
RUN mkdir -p /var/www/opensubtitles

# install app dependencies
WORKDIR /var/www/opensubtitles
COPY package.json /var/www/opensubtitles
RUN npm install --silent 

# Bundle app source
WORKDIR /var/www/opensubtitles
COPY . /var/www/opensubtitles

EXPOSE 3011
ENV NODE_ENV production
CMD npm start

