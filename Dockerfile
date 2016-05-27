FROM debian:jessie
MAINTAINER Fedde Schaeffer <fedde@thehyve.nl>

RUN apt-get update && apt-get install -y --no-install-recommends \
		npm \
	&& rm -rf /var/lib/apt/lists/*

# make nodejs addressable as 'node'
RUN ln -s $(which nodejs) /usr/local/bin/node

VOLUME /code
WORKDIR /code

CMD npm install && node_modules/.bin/gulp make
