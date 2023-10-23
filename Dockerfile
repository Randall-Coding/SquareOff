FROM node:16

WORKDIR /app

COPY ./package*.json ./

RUN npm install

COPY . .

EXPOSE 8080

COPY ./entrypoint.sh ./entrypoint.sh

RUN chmod +x entrypoint.sh

ENTRYPOINT ["./entrypoint.sh"]
