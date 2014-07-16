# Centos 6.5 with InfluxDB
# VERSION	0.0.1

FROM hnakamur/centos:6.5
MAINTAINER shugo

# Install InfluxDB
RUN ["wget","--quiet", "http://s3.amazonaws.com/influxdb/influxdb-latest-1.x86_64.rpm"]
RUN yum localinstall -y ./influxdb-latest-1.x86_64.rpm
RUN rm influxdb-latest-1.x86_64.rpm

# Expose ports
EXPOSE 8083
EXPOSE 8086
EXPOSE 8090
EXPOSE 8099

# Add the startup script
ADD startup.sh /opt/startup.sh
RUN chmod +x /opt/startup.sh

CMD ["/opt/startup.sh"]
