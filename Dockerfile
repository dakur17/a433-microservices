FROM node:18-alpine
WORKDIR /src
COPY . .
RUN npm install
EXPOSE 3000
CMD ["node", "index.js"]