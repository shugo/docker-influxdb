#!/bin/sh

if ! test -e /opt/influxdb/shared/config.toml; then
    cp /opt/influxdb/current/config.toml /opt/influxdb/shared/config.toml
fi
/usr/bin/influxdb -pidfile /opt/influxdb/shared/influxdb.pid -config /opt/influxdb/shared/config.toml
