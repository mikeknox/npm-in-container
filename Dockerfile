ARG NODE_VER=latest

FROM node:${NODE_VER} as npm

WORKDIR /usr/src/app

ARG NODE_ENV=dev
ARG NPM_TOKEN=
ENV NODE_ENV=${NODE_ENV}

# RUN apk update && apk upgrade
# RUN apk add --update --no-cache git man
RUN apt-get update -y
RUN apt-get -y install git man

RUN npm install -g typescript

ENTRYPOINT [ "npm" ]