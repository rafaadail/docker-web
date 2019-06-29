FROM node:latest

# Create app directory
#RUN mkdir -p /usr/src/app

WORKDIR /var/www/react-doc

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package.json /var/www/react-doc/

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