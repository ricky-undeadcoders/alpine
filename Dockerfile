FROM alpine
MAINTAINER Ricky Whitaker <ricky.whitaker@undeadcodersociety.com>

# basic flask environment
RUN apk add --no-cache bash git nginx uwsgi uwsgi-python py2-pip
RUN pip2 install --upgrade pip

RUN chmod 777 /run/ -R
RUN chmod 777 /root/ -R

# expose web server port
# only http, for ssl use reverse proxy
EXPOSE 80

# copy config files into filesystem
COPY nginx.conf /etc/nginx/nginx.conf
COPY app.ini /app.ini
COPY entrypoint.sh /entrypoint.sh

RUN chmod 777 /entrypoint.sh
