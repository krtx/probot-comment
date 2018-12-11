FROM node:10

ENV PATH=$PATH:/app/node_modules/.bin
WORKDIR /app
COPY . .
RUN npm install --production

env

cat /github/workflow/event.json

ENTRYPOINT ["probot", "receive"]
CMD ["/app/index.js"]
