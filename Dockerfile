FROM node:18.20.8
WORKDIR /app
COPY package.json .
RUN  npm install
COPY . .
EXPOSE 4200
RUN chmod +x node_modules/.bin/ng
CMD [ "npm", "start" ]