FROM node:18-alpine
WORKDIR /src
COPY package*.json ./
RUN npm install
COPY ./*.js ./
EXPOSE 3000
CMD ["node", "index.js"]