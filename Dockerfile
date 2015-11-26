FROM node:5.1.0

LABEL "code"="Van Gogh"

RUN apt-get update && apt-get install -y \
    build-essential \
    g++ \
    libgif-dev \
    libjpeg62-turbo-dev \
    libpango1.0-dev

WORKDIR /var/www

COPY ./package.json /var/www/package.json
RUN npm i

COPY ./index.js /var/www/index.js
COPY ./vincent-van-gogh.png /var/www/vincent-van-gogh.png

CMD test -d ascii && node index.js > ascii/vincent.txt
