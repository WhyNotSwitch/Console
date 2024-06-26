FROM node:20-alpine
RUN mkdir -p /opt/app
RUN mkdir -p /opt/app/src
WORKDIR /opt/app
COPY tsconfig.json ./
COPY .env ./
COPY package.json package-lock.json ./
RUN npm install
COPY src/ ./src/
EXPOSE 3000
CMD [ "npm", "start"]