FROM alpine/base
RUN echo '@edgetesting http://dl-cdn.alpinelinux.org/alpine/edge/testing' >> /etc/apk/repositories
RUN apk update \
    && apk upgrade \
    && apk add ejabberd@edgetesting
COPY --chown=root:root entrypoint.sh /
CMD /entrypoint.sh
