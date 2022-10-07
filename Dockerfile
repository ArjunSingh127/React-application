FROM node:12-alpine
RUN apk add --no-cache python2 g++ make
WORKDIR /my-app
COPY . .
RUN npm install --production
RUN npm run build

CMD ["node", "src/index.js"]
EXPOSE 3000