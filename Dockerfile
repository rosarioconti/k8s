FROM node:10 
#-alpine

RUN mkdir -p /home/node/app/node_modules && chown -R node:node /home/node/app

WORKDIR /home/node/app

COPY package.json ./
#COPY yarn.lock ./

USER node

#RUN yarn install

RUN nom install

# COPY --chown=node:node . .
COPY . . 

EXPOSE 3000

CMD [ "node", "src/index.js" ]