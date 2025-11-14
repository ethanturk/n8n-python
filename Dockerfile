FROM n8nio/n8n

USER root

RUN apk add --update python3 py3-pip
RUN rm /usr/lib/python3.12/EXTERNALLY-MANAGED

RUN pip3 install pyktok
ENV NODE_FUNCTION_ALLOW_EXTERNAL=pyktok