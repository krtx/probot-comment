FROM node:10

WORKDIR /
COPY . .
RUN npm install --production

ENTRYPOINT ["/node_modules/.bin/probot", "receive"]
CMD ["/index.js"]
