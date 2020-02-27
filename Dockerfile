FROM node:4.2.3

RUN mkdir -p /app
WORKDIR /app

COPY package.json /app
RUN npm install 

COPY . /app

RUN chmod +x ./start.sh
CMD ["/bin/sh", "start.sh"]

