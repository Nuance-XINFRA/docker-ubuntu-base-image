FROM 		ubuntu:14.04
MAINTAINER 	Brice Argenson <brice.argenson@nuance.com>

ENV 		DEBIAN_FRONTEND noninteractive

RUN 		apt-get update && \
    		apt-get install -y supervisor openssl ca-certificates cron curl git unzip && \
    		apt-get clean && \
    		mkdir -p /var/log/supervisor && \
  			mkdir -p /etc/supervisor/conf.d

ADD 		supervisord.conf /etc/supervisor/supervisord.conf

CMD 		supervisord -c /etc/supervisor/supervisord.conf
