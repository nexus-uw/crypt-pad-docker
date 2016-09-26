FROM node:6

RUN apt-get install git

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

RUN git clone https://github.com/nexus-uw/cryptpad.git .
RUN npm install --unsafe-perm

EXPOSE 3000

CMD [ "node", "server.js" ]


