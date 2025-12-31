FROM n8nio/n8n:latest

USER root

RUN mkdir -p /home/node/.n8n/custom \
  && cd /home/node/.n8n/custom \
  && cat > package.json <<'JSON'
{
  "name": "n8n-custom",
  "private": true,
  "dependencies": {
    "n8n-nodes-mcp": "0.1.29"
  },
  "overrides": {
    "pkce-challenge": "4.0.3"
  }
}
JSON
  && npm install --omit=dev

USER node
