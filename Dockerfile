#!/usr/bin/docker build .
#
# VERSION               1.0

FROM       amd64/openjdk:11-oracle
MAINTAINER jirka@dutka.net

ENV HOSTNAME XorMon

# add product installations
ENV XORMON_VER_MAJ "0.9.12"
ENV XORMON_VER_MIN "-71"

ENV XORMON_VER "$XORMON_VER_MAJ$XORMON_VER_MIN"

# expose HTTPS port
EXPOSE 8443

# download RPM from official website
ADD https://xormon.com/download-static/xormon-$XORMON_VER.noarch.rpm /tmp

# install XorMon RPM
RUN rpm -Uvh /tmp/xormon-$XORMON_VER.noarch.rpm
RUN rm /tmp/xormon-$XORMON_VER.noarch.rpm

ENTRYPOINT [ "java", "-jar", "/opt/xorux/xormon/xormon.war" ]
