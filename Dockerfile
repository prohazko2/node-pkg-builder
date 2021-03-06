FROM node:12.16-alpine


RUN apk --no-cache add --virtual native-deps \
  g++ gcc libgcc libstdc++ linux-headers make python

RUN npm install --quiet node-gyp pkg pkg-fetch -g

RUN pkg-fetch -n node12.16.1 -p alpine -a x64
