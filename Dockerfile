FROM n8nio/n8n:latest

USER root

RUN apk add --no-cache curl bash && \
    npm install -g n8n-nodes-ncp

USER node
