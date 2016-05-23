#!/bin/bash

set -e

confd -backend env -onetime -config-file=/etc/confd/conf.d/config.properties.toml

/opt/tomcat/bin/catalina.sh run
