FROM node

LABEL maintainer="ZoiosNET<management@zoios.net>"

# Build-time metadata as defined at http://label-schema.org
ARG BUILD_DATE
ARG VCS_REF
ARG VERSION
LABEL org.label-schema.build-date=$BUILD_DATE \
        org.label-schema.name="angular-electron" \
        org.label-schema.description="Image to test & build angular or electron apps." \
        org.label-schema.url="1.0" \
        org.label-schema.vcs-ref=$VCS_REF \
        org.label-schema.vcs-url="https://github.com/ZoiosNET/docker-angular-electron" \
        org.label-schema.vendor="ZoiosNET" \
        org.label-schema.version=$VERSION \
        org.label-schema.schema-version="1.0"

RUN apt-get update
RUN apt-get install -y libgtk-3.0 libgconf-2-4 libasound2 libxtst6 libxss1 libnss3 xvfb
RUN npm install electron angular-cli tsc electron-builder npm-run-all typescript -g
