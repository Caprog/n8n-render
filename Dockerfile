FROM n8nio/n8n:latest

USER root

# Instalación de dependencias necesarias
RUN apt-get update && apt-get install -y curl gnupg && \
    curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && \
    apt-get install -y nodejs npm && \
    node -v && npm -v && \
    npm cache clean --force && \
    npm install -g n8n-nodes-ncp && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

USER node
