FROM node:8.9.4-stretch

# Debug Level
ENV NPM_CONFIG_LOGLEVEL warn

RUN apt-get update && apt-get install -y \
	locales \
	git \
	curl \
	ruby-full \
	yarn \
	vim

# SASS/Compass
RUN gem install sass -v 3.4.18
RUN gem install compass
RUN npm install -g webpack webpack-dev-server webpack-cli

ADD entrypoint.sh /usr/bin/entrypoint.sh
CMD sh /usr/bin/entrypoint.sh