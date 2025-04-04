# Custom n8n Docker Image

This repository contains a customized Dockerfile for running n8n with additional community nodes, specifically the MCP client node (`n8n-nodes-mcp`).

## What is included:

- Official [n8n](https://n8n.io) Docker image (`n8nio/n8n:latest`).
- Community node: **MCP Client** (`n8n-nodes-mcp`).

## Dockerfile Content:

```Dockerfile
FROM n8nio/n8n:latest

RUN npm install -g n8n-nodes-mcp
```

## Usage:

Use this repository with platforms such as [Render](https://render.com) to deploy a custom n8n instance that persists community nodes across restarts.

### Deploying on Render

1. Fork or clone this repository.
2. Connect Render to your GitHub repository.
3. Deploy as a Docker-based Web Service.

Your custom node (MCP client) will be permanently installed, resolving issues related to disappearing or corrupted nodes.

---

For more info on n8n community nodes, visit the [n8n community nodes documentation](https://docs.n8n.io/integrations/community-nodes/).

