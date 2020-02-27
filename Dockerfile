FROM node:10.18

WORKDIR /usr/src/app

COPY package.json /usr/src/app
RUN npm install 

COPY . /usr/src/app

RUN chmod +x ./start.sh
CMD ["/bin/sh", "start.sh"]

