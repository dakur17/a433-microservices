FROM node:18-alpine
WORKDIR /src
COPY package*.json ./
RUN npm install
COPY ./*.js ./
CMD ["node", "index.js"]