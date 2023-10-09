FROM openjdk:11-jdk-alpine
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 5128
CMD [ "node", "index.js"]
