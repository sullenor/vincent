FROM node:5.1.0

LABEL "code"="Van Gogh"

RUN apt-get update
RUN apt-get install -qqy libjpeg62-turbo-dev libpango1.0-dev libgif-dev build-essential g++

WORKDIR /var/www

COPY ./package.json /var/www/package.json
RUN npm install

COPY ./index.js /var/www/index.js
COPY ./vincent-van-gogh.png /var/www/vincent-van-gogh.png

CMD test -d ascii && node index.js > ascii/vincent.txt
