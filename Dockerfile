FROM node:5.1.0

RUN apt-get update
RUN apt-get install -qqy libjpeg62-turbo-dev libpango1.0-dev libgif-dev build-essential g++

ADD ./package.json /var/www/package.json
ADD ./vincent-van-gogh.png /var/www/vincent-van-gogh.png
WORKDIR /var/www

RUN npm i
