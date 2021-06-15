FROM ruby:3.0.1

RUN apt-get update && apt-get install -y \
  npm \
  nodejs
RUN npm install --global yarn

RUN mkdir /todo-app
WORKDIR /todo-app

COPY Gemfile /todo-app
COPY Gemfile.lock /todo-app
RUN bundle install
