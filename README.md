## docker-influxdb

This probject builds a docker container for running InfluxDB.

### Usage

    docker run -d shugo/influxdb

#### Attach persistent directories

1. Create a directory `<data-dir>` on the host.

2. Create an InfluxDB config file at `<data-dir>/config.toml`.

3. Start a container mounting `<data-dir>`.

     docker run -d -v <data-dir>:/opt/influxdb/shared shugo/influxdb
