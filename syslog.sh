#!/bin/bash

if [ -z "$TOKEN" ]; then
  echo "Missing \$TOKEN"
  exit 1
fi

sed -i "s/{{TOKEN}}/$TOKEN/" /etc/rsyslog.d/50-default.conf

/usr/sbin/rsyslogd -n
