FROM n8nio/n8n

RUN rm /usr/lib/python*/EXTERNALLY-MANAGED

USER root

RUN apk add --update python3 py3-pip

USER n8n

RUN pip3 install pyktok
ENV NODE_FUNCTION_ALLOW_EXTERNAL=pyktok