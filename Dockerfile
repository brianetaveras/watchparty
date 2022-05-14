FROM node:16-alpine

WORKDIR /app

COPY package.json .

RUN npm install

COPY ./ ./

CMD ["npm", "run", "buildServer"]
CMD ["npm", "run", "server"]


EXPOSE 8080
