FROM alpine:3.4

RUN apk --update add \
  rsyslog

WORKDIR /usr/src
ADD ./etc/rsyslog.conf /etc/rsyslog.conf
ADD ./etc/rsyslog.d/50-default.conf /etc/rsyslog.d/50-default.conf
ADD syslog.sh /usr/src/

CMD ["./syslog.sh"]
