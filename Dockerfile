FROM n8nio/n8n
USER root
RUN apk add --update python3 py3-pip

RUN rm /usr/lib/python*/EXTERNALLY-MANAGED

USER n8n

ENV NODE_FUNCTION_ALLOW_EXTERNAL=pyktok