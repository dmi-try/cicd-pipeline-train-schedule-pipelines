FROM node:carbon
WORKDIR /usr/src/app
COPY package*.json ./
# I have a really bad network connection
ENV npm_config_fetch_retries 10
ENV npm_config_fetch_retry_mintimeout 0
ENV npm_config_fetch_retry_maxtimeout 1
ENV npm_config_fetch_retry_factor 0
ENV npm_config_heading xxxyyy
ENV npm_config_registry http://registry.npmjs.org/
RUN npm install --verbose
COPY . .
EXPOSE 8080
CMD ["npm", "start"]
