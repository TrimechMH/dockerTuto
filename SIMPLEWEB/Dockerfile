FROM node:alpine

WORKDIR /usr/app
COPY ./ ./

RUN npm i -g nodemon
RUN npm install

CMD ["npm", "start"]