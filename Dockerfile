FROM node:lts-alpine 

USER root

# Create app directory

WORKDIR /usr/AngularTest/src

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)

COPY package*.json /usr/AngularTest

RUN npm install

# If you are building your code for production
# RUN npm install --only=production

# Bundle app source
COPY src/ .

EXPOSE 3000
CMD [ "npm", "start" ]





