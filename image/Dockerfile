FROM crunchydata/crunchy-pgpool:centos7-9.6.6-1.7.0

USER root

# pgpool Communication Manager Connection
EXPOSE 9898

ADD /rootfs /

RUN set -x \
  && chown daemon.daemon /opt/cpm/bin/*.sh \
  && chmod +x /opt/cpm/bin/*.sh \
  && chmod +x /*.sh

USER daemon

ENTRYPOINT ["/docker-entrypoint.sh"]

CMD ["/opt/cpm/bin/startpgpool.sh"]
