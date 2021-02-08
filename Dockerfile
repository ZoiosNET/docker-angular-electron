FROM node

MAINTAINER ZoiosNET <management@zoios.net>

RUN apt-get update
RUN apt-get install -y libgtk-3.0 libgconf-2-4 libasound2 libxtst6 libxss1 libnss3 xvfb
RUN npm install electron angular-cli tsc electron-builder npm-run-all typescript -g
