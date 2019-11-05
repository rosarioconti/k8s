FROM node:10

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

RUN npm install
# If you are building your code for production
# RUN npm ci --only=production

# Bundle app source
COPY . .

EXPOSE 3002
CMD [ "node", "src/index.js" ]


#------------------

#FROM node:10 
#-alpine

#RUN mkdir -p /home/node/app/node_modules && chown -R node:node /home/node/app

#WORKDIR /home/node/app

#COPY package.json ./
#COPY yarn.lock ./

#USER node

#RUN yarn install

#RUN npm install

# COPY --chown=node:node . .
#COPY . . 

#EXPOSE 3000

#CMD [ "node", "src/index.js" ]