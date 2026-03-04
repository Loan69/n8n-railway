FROM n8nio/n8n:latest

USER root

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENV N8N_USER_FOLDER=/data
ENV HOME=/data
ENV DATA_FOLDER=/data
ENV N8N_LISTEN_ADDRESS=0.0.0.0

EXPOSE 5678

ENTRYPOINT ["/entrypoint.sh"]
