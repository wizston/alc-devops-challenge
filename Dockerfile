FROM mhart/alpine-node:latest

ENV APP_HOME /usr/user_manager/
ENV NODE_ENV "production"
ENV DB_HOST "mongodb"
ENV PORT "3000"

ADD package.json /tmp/package.json
RUN cd /tmp && npm install
RUN mkdir -p /opt/app && cp -a /tmp/node_modules /opt/app/

WORKDIR /opt/app
ADD . /opt/app

EXPOSE 3000

CMD ["npm", "start"]