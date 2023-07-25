FROM node:14.20-alpine
RUN apk add --no-cache tzdata
ENV TZ=Asia/Jerusalem
RUN mkdir -p /opt/server
RUN mkdir -p /opt/client
RUN mkdir -p /opt/server/tracks
RUN mkdir -p /RTG/Vidio-Drive
COPY server /opt/server
COPY client /opt/client
RUN cd /opt/client ; npm install ; npm install -g @angular/cli ; npm run build 
WORKDIR /opt/server
EXPOSE 443
RUN npm install
CMD ["npx","ts-node","bin/www_students"]

