FROM node:latest
  LABEL description="A demo Dockerfile for build Docsify."
  WORKDIR /docs
  RUN npm install -g docsify-cli@latest
  RUN docsify init ./docs
  EXPOSE 3000/tcp
  ENTRYPOINT docsify serve .
