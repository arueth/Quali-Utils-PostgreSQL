FROM postgres:9.6.3-alpine

RUN apk update \
&& apk upgrade \
&& rm -rf /var/cache/apk/*

COPY docker-entrypoint-initdb.d/ /docker-entrypoint-initdb.d

EXPOSE 5432
