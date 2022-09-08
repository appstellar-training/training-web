FROM node:14

# Create app directory
WORKDIR /usr/training-web

# Install dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
COPY package*.json /usr/training-web/

RUN npm install

COPY . /usr/training-web

RUN npm run build

COPY . /usr/training-web

EXPOSE 3000

CMD [ "npm", "run", "start" ]
