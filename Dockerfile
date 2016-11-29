FROM debian:jessie
MAINTAINER Fedde Schaeffer <fedde@thehyve.nl>

RUN apt-get update && apt-get install -y --no-install-recommends \
		nodejs-legacy \
		npm \
	&& rm -rf /var/lib/apt/lists/*

VOLUME /code
WORKDIR /code

CMD npm install && node_modules/.bin/gulp make
