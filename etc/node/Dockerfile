FROM node:latest

# Create app directory
RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package.json /usr/src/app/

RUN npm install
#RUN  yarn global add create-react-app

#ADD src /usr/src/app/src
#ADD public /usr/src/app/public

# If you are building your code for production
# RUN npm ci --only=production

# Bundle app source
#COPY . .

RUN npm build
#
#CMD [ "npm", "start" ]