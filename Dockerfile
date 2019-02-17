FROM alpine/base
RUN echo '@edgetesting http://dl-cdn.alpinelinux.org/alpine/edge/testing' >> /etc/apk/repositories
RUN apk update \
    && apk upgrade \
    && apk add ejabberd@edgetesting
RUN chmod +x /usr/lib/eimp-1.0.1/priv/bin/eimp
COPY --chown=root:root entrypoint.sh /
CMD /entrypoint.sh
