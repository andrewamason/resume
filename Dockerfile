FROM ruby:3.4.1

WORKDIR /home/app

COPY Gemfile* ./

RUN bundle install

COPY . .

CMD [ "bundle", "exec", "jekyll", "serve" ]