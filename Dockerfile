FROM node:latest
LABEL description="A demo Dockerfile for build Docsify."
WORKDIR /docs
RUN npm install -g docsify-note-cli
RUN npm install -g docsify
RUN docsify init
EXPOSE 3000/tcp
ENTRYPOINT docsify serve .
