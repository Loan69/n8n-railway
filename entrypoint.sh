#!/bin/sh

# Corriger les permissions après montage du volume
mkdir -p /data/.n8n
chown -R node:node /data
chmod -R 755 /data

# Lancer n8n en tant que user node
export N8N_USER_FOLDER=/data
export HOME=/data
export DATA_FOLDER=/data

exec su-exec node n8n start 2>/dev/null || \
     runuser -u node -- n8n start 2>/dev/null || \
     n8n start
