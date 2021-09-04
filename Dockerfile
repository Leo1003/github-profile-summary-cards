FROM alpine:3.14

RUN addgroup -g 1000 node && \
    adduser -u 1000 -G node -s /bin/sh -D node && \
    apk add --no-cache nodejs npm

WORKDIR /home/node

USER 1000:1000

COPY --chown=1000:1000 . ./

RUN npm ci && \
    rm -rf /home/node/.npm

ENTRYPOINT ["./docker-entrypoint.sh"]

