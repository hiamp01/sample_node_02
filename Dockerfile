FROM node:current-slim
RUN apt-get update && apt-get install git
WORKDIR /usr/src/app
RUN git clone https://github.com/hiamp01/sample_node_02.git
#COPY package.json .
WORKDIR /usr/src/app/sample_node_02
RUN npm install

CMD ["npm", "start"]

#EXPOSE 3005
#COPY . .
