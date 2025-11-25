# Use official n8n Docker image
FROM n8nio/n8n:latest

# Expose default n8n port
EXPOSE 5678

# No need for USER root or USER node as the image handles this
# The image comes with n8n entrypoint
