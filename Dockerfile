FROM sysdig/agent:latest

COPY ./docker-entrypoint.patch /

RUN patch -p0 < /docker-entrypoint.patch && rm /docker-entrypoint.patch

ENTRYPOINT ["/docker-entrypoint.sh"]
