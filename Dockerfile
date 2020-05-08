FROM ruby:2.6.5-alpine

RUN mkdir /app
WORKDIR /app

COPY Gemfile        Gemfile
COPY Gemfile.lock   Gemfile.lock

RUN gem install bundler:2.0.2
RUN bundle install

COPY config.ru config.ru

EXPOSE 9292

CMD ["rackup", "-o", "0.0.0.0"]
