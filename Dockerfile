FROM alpine
MAINTAINER Ricky Whitaker <ricky.whitaker@undeadcodersociety.com>

# basic flask environment
RUN apk add --no-cache bash git nginx uwsgi uwsgi-python3 python3-dev py3-pip \
	&& pip3 install --upgrade pip

#	&& chmod 777 /run/ -R \
#	&& chmod 777 /root/ -R

# expose web server port
# only http, for ssl use reverse proxy
EXPOSE 80
