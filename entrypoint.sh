#!/bin/sh

# Corriger les permissions après montage du volume
mkdir -p /data/.n8n
chown -R node:node /data
chmod -R 755 /data

# Lancer n8n en tant que user node
su-exec node n8n start
