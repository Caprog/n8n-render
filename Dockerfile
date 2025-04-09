FROM n8nio/n8n:latest

USER root

ENV N8N_ENABLE_COMMUNITY_NODES=true
ENV N8N_COMMUNITY_PACKAGES_ALLOW_TOOL_USAGE=true

RUN apk add --no-cache curl bash && \
    npm install -g n8n-nodes-mcp

RUN curl -I https://registry.npmjs.org

RUN npm install -g @suekou/mcp-notion-server

USER node
