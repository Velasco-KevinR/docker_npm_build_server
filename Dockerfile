FROM ubuntu:14.04

RUN apt-get install -y curl && \
  curl -sL https://deb.nodesource.com/setup | sudo bash -

WORKDIR /root/buld-dir/

RUN apt-get update && apt-get install nodejs && \
  npm install -g gulp bower grunt 
  
CMD npm install && \
  bower --allow-root install && \
  gulp build
