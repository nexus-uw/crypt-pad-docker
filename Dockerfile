FROM node:6
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

#RUN git clone https://github.com/nexus-uw/cryptpad.git .
RUN git clone https://github.com/xwiki-labs/cryptpad.git .
RUN npm install --unsafe-perm
RUN npm install bower && $(npm bin)/bower install --allow-root
RUN mv config.js.dist config.js
EXPOSE 3000
VOLUME /usr/src/app/datastore
CMD [ "node", "server.js" ]


