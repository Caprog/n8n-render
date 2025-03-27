FROM n8nio/n8n:latest

USER root

RUN ls -la /home/node/.n8n

RUN npm install -g node-fetch

COPY start.sh /start.sh
RUN chmod +x /start.sh

RUN ls -l /start.sh

USER node

ENTRYPOINT ["sh", "/start.sh"]

RUN ls -l /start.sh
