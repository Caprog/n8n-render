FROM n8nio/n8n:latest

USER root

RUN ls -la /home/node/.n8n

RUN npm install -g node-fetch

USER node
