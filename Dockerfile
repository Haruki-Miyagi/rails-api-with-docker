FROM ruby:2.6.3-stretch

RUN apt-get update -qq && \
    apt-get install -y nodejs mysql-client

COPY Gemfile /Gemfile
COPY Gemfile.lock /Gemfile.lock
RUN bundle install
