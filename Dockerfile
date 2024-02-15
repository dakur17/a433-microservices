# unduh base image node versi 14.
FROM node:14-bullseye
# working directory untuk container
WORKDIR /app
# salin seluruh source code ke workdir
COPY . .
# set prod mode dan pakai container item-db
ENV NODE_ENV=production DB_HOST=item-db
# install dependencies prod dan build
RUN npm install --production --unsafe-perm && npm run build
# expos port 8080
EXPOSE 8080
# eksekus npm start untuk jalankan server
CMD ["npm", "start"]