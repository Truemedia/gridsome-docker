FROM node:12-alpine

# Install build tools
RUN apk --no-cache add --virtual native-deps \
  g++ gcc libgcc libstdc++ linux-headers make python

# Install global lib
ENV NPM_CONFIG_PREFIX=/home/node/.npm-global
USER node
RUN npm i -g gridsome

# Install deps
COPY --chown=node:node gridsome /home/node/app
#RUN chown -R node:node /home/node/app
WORKDIR /home/node/app
USER node
RUN npm i
RUN npm i core-util-is

# Launch
EXPOSE 8080
CMD /home/node/.npm-global/bin/gridsome develop
