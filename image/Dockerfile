FROM gerritforge/gerrit-centos7:2.14.1
MAINTAINER Gabitchov

COPY gerrit-entrypoint.sh gerrit-entrypoint.sh

USER root
RUN  chmod 755 gerrit-entrypoint.sh

USER gerrit

EXPOSE 29418 8090

ENTRYPOINT ["./gerrit-entrypoint.sh"]
CMD ["gerrit-db","3306"]