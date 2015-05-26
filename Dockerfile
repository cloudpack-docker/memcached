FROM cloudpack/centos

RUN yum -y update
RUN yum -y install memcached
RUN yum -y clean all

RUN mkdir /var/run/memcached
RUN chown memcached.memcached /var/run/memcached
VOLUME /var/run/memcached

CMD /usr/bin/memcached -u memcached -s /var/run/memcached/memcached.sock
