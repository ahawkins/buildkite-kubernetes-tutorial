FROM ruby:2.6

RUN mkdir -p /usr/src/app/vendor/cache

WORKDIR /usr/src/app
ENV PATH /usr/src/app/bin:$PATH

ADD Gemfile Gemfile.lock /usr/src/app/
ADD vendor/cache /usr/src/app/vendor/cache

RUN bundle install --local

ADD . /usr/src/app/

ENV PORT 3000

CMD [ "server" ]
