FROM n8nio/n8n:1.110.1

LABEL maintainer="Burak Ince <burak.ince@linux.org.tr>"

USER root
RUN apk add --no-cache python3 py3-pip && \
    ln -sf python3 /usr/bin/python && \
    pip3 install --no-cache-dir --root-user-action=ignore --break-system-packages fire

USER node
