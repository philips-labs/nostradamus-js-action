FROM node:erbium-alpine

RUN apk add --no-cache \
  git \
  openssh

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
