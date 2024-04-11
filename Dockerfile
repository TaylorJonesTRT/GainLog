# syntax = docker/dockerfile:1

FROM ruby:slim as base

RUN apt-get update &&\
    apt-get install --yes git curl build-essential

RUN curl -sL https://deb.nodesource.com/setup_current.x | bash - &&\
    apt-get update && \
    apt-get install --yes --no-install-recommends nodejs &&\
    npm install -g yarn

FROM base as build

RUN gem install rails
RUN rails new demo --skip-active-record --javascript esbuild

FROM base

WORKDIR demo
COPY --from=build /demo /demo
COPY --from=build /usr/local/bundle /usr/local/bundle

ENV RAILS_ENV=production
RUN bin/rails assets:precompile
EXPOSE 3000
CMD bin/rails server
