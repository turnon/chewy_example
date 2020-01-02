FROM ruby:2.5.1

WORKDIR /gemfiles

ADD Gemfile* ./

RUN apt-get update && apt-get -y install nodejs && bundle install
