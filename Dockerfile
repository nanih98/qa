FROM node:buster-slim

LABEL MAINTAINER 'Daniel Cascales <daniel.cascales@soprasteria.com>'
LABEL name="nanih98/nodejs:latest"

# Install prerequisites

#RUN set -eux ;\
#    apt-get update ;\
#    apt-get install git-core curl build-essential openssl libssl-dev python -y 
#
##Install nodejs
#
#RUN set -eux ;\
#    git clone https://github.com/nodejs/node.git ;\
#    cd node ;\
#    ./configure ;\
#    make && make install ;\
#    # Install npm
#    curl -L https://npmjs.org/install.sh | sh ;\
#    rm -rf /var/lib/apt/lists/* /var/cache/archives/*.deb

RUN  set -eux ;\
     npm install @wdio/cli ;\
     npm i webdriver 

# Setup working dir where code are located. Then -v $yourvolume_withyourcode:/var/www/html
WORKDIR /var/www/html 

#COPY entrypoint.sh /

#ENTRYPOINT [ "/entrypoint.sh" ]
