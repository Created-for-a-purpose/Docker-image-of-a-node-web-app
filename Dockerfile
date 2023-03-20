# Base image
FROM node:alpine 
WORKDIR /usr/app

# Making package.json available to the temporary container
COPY ./package.json ./
# Installing dependencies
RUN npm install 

COPY ./ ./

# Startup command
CMD [ "npm", "start" ]