FROM ruby:2.7-slim-bullseye

ARG BUNDLER_VERSION=1.17.3

RUN gem install bundler --version "$BUNDLER_VERSION" --no-document

COPY ./ ./

RUN bundle install
