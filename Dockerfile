FROM sysdig/sysdig:0.4.0

COPY ./docker-entrypoint.patch /

RUN patch -p0 < /docker-entrypoint.patch && rm /docker-entrypoint.patch

ENTRYPOINT ["/docker-entrypoint.sh"]
