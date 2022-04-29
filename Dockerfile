FROM python:3.8.2-alpine

WORKDIR /catchit

RUN apk update && apk add --no-cache --upgrade \
    grep bash

ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

RUN adduser -D catchit
COPY ./catchit/* /catchit/
RUN mkdir /catchit/mnt
RUN chown -R catchit /catchit

USER catchit

ENTRYPOINT ["python3", "/catchit/catchit.py", "--scan-path", "/catchit/mnt/"]