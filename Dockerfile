FROM node:carbon
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY . .
ENV PORT=31000
EXPOSE 31000
CMD ["npm", "start"]
