FROM n8nio/n8n:latest

USER root

RUN apt-get update && apt-get install -y gosu && rm -rf /var/lib/apt/lists/*

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENV N8N_USER_FOLDER=/data
ENV HOME=/data
ENV DATA_FOLDER=/data

EXPOSE 5678

ENTRYPOINT ["/entrypoint.sh"]
