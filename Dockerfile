FROM n8nio/n8n:latest

USER root
RUN mkdir -p /home/node/.n8n/custom/node_modules \
    && cd /home/node/.n8n/custom \
    && npm install n8n-nodes-mcp
USER node
