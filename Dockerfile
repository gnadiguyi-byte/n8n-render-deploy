# n8n Deployment Image for Render
# Latest n8n official image
FROM n8n:latest

# Expose the default n8n port
EXPOSE 5678

# Set working directory
WORKDIR /home/node/app

# Health check
HEALTHCHECK --interval=30s --timeout=10s --start-period=5s --retries=3 \
    CMD node -e "require('http').get('http://localhost:5678/healthz', (r) => {if (r.statusCode !== 200) throw new Error(r.statusCode)})"

# Placeholder for custom scripts or configuration
# Uncomment and modify as needed for your workflow:
# COPY ./custom-scripts /custom-scripts
# RUN chmod +x /custom-scripts/*.sh

# Start n8n
CMD ["n8n", "start"]
