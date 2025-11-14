FROM n8nio/n8n
USER root

RUN rm /usr/lib/python*/EXTERNALLY-MANAGED

RUN apk add --update python3 py3-pip
RUN pip3 install pyktok

USER n8n

ENV NODE_FUNCTION_ALLOW_EXTERNAL=pyktok