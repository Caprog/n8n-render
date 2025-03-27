FROM n8nio/n8n:latest

USER root

RUN npm install -g node-fetch

COPY start.sh /start.sh
RUN chmod +x /start.sh

USER node

ENTRYPOINT ["/start.sh"]

RUN ls -l /start.sh
