FROM node:6

RUN apt-get install git

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

RUN git clone https://github.com/nexus-uw/cryptpad.git .
RUN npm install --unsafe-perm
RUN mv config.js.dist config.js
EXPOSE 3000
VOLUME /usr/src/app/datastore
CMD [ "node", "server.js" ]


