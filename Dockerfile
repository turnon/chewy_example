FROM ruby:2.5.1

WORKDIR /app

ADD Gemfile* ./

RUN apt-get update && apt-get -y install nodejs && bundle install
