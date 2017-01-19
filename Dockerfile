
FROM node:6
MAINTAINER Thomas Khalil<thomas.khalil@ginmon.de>
LABEL Name=s3-policy-signer Version=1.0.0 
COPY package.json /tmp/package.json
RUN cd /tmp && npm install --production
RUN mkdir -p /usr/src/app && mv /tmp/node_modules /usr/src
WORKDIR /usr/src/app
COPY . /usr/src/app
EXPOSE 5000
CMD npm start
