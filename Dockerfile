FROM node:16-alpine

WORKDIR /app
COPY package.json .
RUN npm install

COPY ./ ./

CMD ["npm", "run", "dev"]
CMD ["npm", "run", "start"]

EXPOSE 3000
EXPOSE 8080