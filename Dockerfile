FROM debian:buster

LABEL maintainer="ZoiosNET<management@zoios.net>"

RUN echo "Prepare"
RUN dpkg --add-architecture i386
RUN apt-get update
RUN apt install -y apt-transport-https dirmngr gnupg ca-certificates curl

RUN echo "Setup NodeJS-Repository"
RUN curl -sL https://deb.nodesource.com/setup_15.x -o nodesource_setup.sh
RUN bash nodesource_setup.sh

RUN echo "Setup Mono-Repository"
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
RUN echo "deb https://download.mono-project.com/repo/debian stable-buster main" | tee /etc/apt/sources.list.d/mono-official-stable.list

RUN echo "Install Components"
RUN apt-get update
RUN apt-get install -y nodejs libgtk-3.0 libgconf-2-4 libasound2 libxtst6 libxss1 libnss3 xvfb wine wine32 wine64 libwine libwine:i386 fonts-wine mono-complete build-essential
RUN npm install electron angular-cli tsc electron-builder npm-run-all typescript -g
