FROM ruby:2.5.3

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev
RUN mkdir /eshop-email-sender
WORKDIR /eshop-email-sender
COPY Gemfile /eshop-email-sender/Gemfile
COPY Gemfile.lock /eshop-email-sender/Gemfile.lock
RUN bundle install
COPY . /eshop-email-sender

EXPOSE 3000

CMD bundle exec passenger start -e {ENVIRONMENT}
