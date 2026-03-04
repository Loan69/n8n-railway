#!/bin/sh

# Corriger les permissions après montage du volume
mkdir -p /data/.n8n
chmod -R 777 /data

# Lancer n8n en tant que user node
exec n8n start

