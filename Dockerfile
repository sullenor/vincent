FROM node:5.1.0

LABEL "code"="Van Gogh"

RUN apt-get update
RUN apt-get install -qqy libjpeg62-turbo-dev libpango1.0-dev libgif-dev build-essential g++

WORKDIR /var/www

ADD ./package.json /var/www/
RUN npm i

ADD ./index.js /var/www/
ADD ./vincent-van-gogh.png /var/www/

CMD test -d ascii && node index.js > ascii/vincent.txt
