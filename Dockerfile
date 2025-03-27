FROM n8nio/n8n:latest

USER root

RUN npm install -g node-fetch

USER node

VOLUME ["/home/node/.n8n"]
