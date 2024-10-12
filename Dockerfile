FROM node:latest
LABEL description="A demo Dockerfile for build Docsify."
WORKDIR /
RUN npm config set registry https://registry.npmjs.org/
RUN npm install -g docsify-cli
EXPOSE 3000/tcp
ENTRYPOINT docsify serve .
