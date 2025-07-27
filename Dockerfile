FROM node:18.20.8
WORKDIR /app
COPY package.json .
RUN  npm install
COPY . .
EXPOSE 4200
RUN chmod +x node_modules/.bin/ng
RUN useradd -m appuser && chown -R appuser /app
USER appuser
RUN apt-get update && apt-get upgrade -y
RUN rm -rf /var/lib/apt/lists/*
CMD [ "npm", "start" ]