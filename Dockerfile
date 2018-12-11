FROM node:10

ENV PATH=$PATH:/github/workspace/node_modules/.bin
RUN npm install --production

ENTRYPOINT ["probot", "receive"]
CMD ["/app/index.js"]
