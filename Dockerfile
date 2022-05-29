FROM alpine:3.16

ENTRYPOINT ["/opt/bin/wait-for-it.sh"]

RUN set -eux -o pipefail \
    && apk add --no-cache \
        bash \
    && mkdir -p /opt/bin \
    && wget -O /opt/bin/wait-for-it.sh \
        https://raw.githubusercontent.com/vishnubob/wait-for-it/81b1373f17855a4dc21156cfe1694c31d7d1792e/wait-for-it.sh \
    && chmod +x /opt/bin/wait-for-it.sh
