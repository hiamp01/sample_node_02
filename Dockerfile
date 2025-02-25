FROM node:current-slim
WORKDIR /usr/src/app
COPY package.json .

RUN npm install
CMD ["npm", "start"]

#EXPOSE 3005
COPY . .
