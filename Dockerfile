FROM node:erbium-alpine

RUN apk add --no-cache \
  git \
  openssh \
  bash

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
