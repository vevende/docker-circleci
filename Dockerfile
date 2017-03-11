FROM docker:1.13

RUN apk add --no-cache \
  make \
  py-pip \
  git \
  openssh

RUN set -ex \
  && pip install --no-cache-dir docker-compose \
  && which docker-compose \
  && docker-compose version