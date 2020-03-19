FROM node:buster-slim

LABEL MAINTAINER 'Daniel Cascales <daniel.cascales@soprasteria.com>'
LABEL name="nanih98/nodejs"

# Copy pkg.json to install necessary dependencies
COPY ./source/package.json /home/node

#Install base dependencies of the system (container node based on debian kernel)

RUN set -eux ;\
    apt-get update ;\
    apt install wget libnspr4 libsqlite3-0 libxcb1 libx11-data -y ;\
    cd /tmp ;\
    wget http://ftp.fr.debian.org/debian/pool/main/g/glib2.0/libglib2.0-0_2.58.3-2+deb10u2_amd64.deb && dpkg -i libglib2.0-0_2.58.3-2+deb10u2_amd64.deb ;\
    wget http://ftp.fr.debian.org/debian/pool/main/n/nss/libnss3_3.42.1-1+deb10u2_amd64.deb && dpkg -i libnss3_3.42.1-1+deb10u2_amd64.deb ;\
    wget http://ftp.fr.debian.org/debian/pool/main/libx/libx11/libx11-6_1.6.7-1_amd64.deb && dpkg -i libx11-6_1.6.7-1_amd64.deb ;\
    rm -rfv /tmp/lib* /var/lib/apt/lists/* /var/cache/archives/*.deb 
    
RUN set -eux ;\
    cd /home/node && npm install --global package.json ;\
    # npm install --save package.json
    rm -fv /home/node/package.json

#Install necessary modules
RUN  set -eux ;\
     cd /home/node ;\
     npm install @wdio/cli ;\
     npm install --save @ffmpeg-installer/ffmpeg ;\
     npm install wdio-video-reporter 

# Setup working dir where code are located. (code about node, webdriver config, node modules...)
WORKDIR /home/node 
