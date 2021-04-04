FROM ruby:2.5.0
ENV LANG C.UTF-8
ENV APP_ROOT /myapp

RUN apt-get update -qq && apt-get install -y \
    build-essential \
    libpq-dev \
    postgresql-client \
    nodejs \
    && rm -rf /var/lib/apt/lists/* /var/cache/apt/archives/* /tmp/* /var/tmp/*

RUN gem install rails bundler

WORKDIR $APP_ROOT
COPY Gemfile* ${APP_ROOT}/
RUN bundle install --clean --path=vendor/bundle

ADD . ${APP_ROOT}/

CMD ["rails", "server", "-b", "0.0.0.0"]