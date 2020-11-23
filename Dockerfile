FROM node:12.18.3-alpine as build

WORKDIR /app

# copy the react app to the container
COPY . /app/

# prepare the container for building react

RUN npm install --silent
RUN npm install react-scripts@3.0.1 -g --silent

RUN npm run build
