FROM docker.io/centos:latest
MAINTAINER Erich Focht

# Install TokuMX
RUN yum -y install http://www.percona.com/downloads/percona-release/redhat/0.1-3/percona-release-0.1-3.noarch.rpm
RUN yum -y install Percona-Server-MongoDB
RUN sed -i'' -e '/logpath/d' /etc/mongod.conf
RUN yum clean all

VOLUME ["/data/db"]
WORKDIR /data
CMD ["mongod"]

# Expose process and http port
EXPOSE 27017
EXPOSE 28017

