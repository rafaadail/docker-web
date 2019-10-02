FROM node:10.16.3

# Create app directory
#RUN mkdir -p /usr/src/app

WORKDIR /var/www/omnistack

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package.json /var/www/omnistack/

RUN apt-get update \
&& apt-get install curl \
&& npm install
RUN curl -sS http://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - \
&& echo "deb http://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update && apt-get install --no-install-recommends yarn
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