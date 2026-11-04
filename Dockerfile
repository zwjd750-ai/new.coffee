# syntax = docker/dockerfile:1
ARG RUBY_VERSION=3.2.11
FROM registry.docker.com/library/ruby:$RUBY_VERSION-slim

# 必要なパッケージをインストール
RUN apt-get update -qq && \
    apt-get install --no-install-recommends -y build-essential git libpq-dev libvips pkg-config postgresql-client

WORKDIR /rails

# Gemfileをコピーしてインストール
COPY Gemfile Gemfile.lock ./
RUN bundle install

# アプリケーションのコードをコピー
COPY . .

EXPOSE 3000
CMD ["./bin/rails", "server", "-b", "0.0.0.0"]