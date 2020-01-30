FROM python:3.8-alpine

RUN mkdir /code
WORKDIR /code

RUN apk update \
    && apk add --no-cache zlib-dev python-dev build-base \
    && pip install black \
    && apk del zlib-dev python-dev build-base \
    && rm -rf /var/cache/apk/*

ENTRYPOINT ["black"]