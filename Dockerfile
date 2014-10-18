FROM ruby:2.1.2 
MAINTAINER brianvans

RUN apt-get -y update
RUN apt-get -y install nodejs

RUN mkdir /app
ADD . /app
WORKDIR /app

RUN bundle install

EXPOSE 4567
CMD ["bundle", "exec", "middleman", "server"]
