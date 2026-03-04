FROM n8nio/n8n:latest

USER root

RUN mkdir -p /data/.n8n \
    && chown -R 1000:1000 /data \
    && chmod -R 755 /data

USER node

WORKDIR /data

ENV N8N_USER_FOLDER=/data
ENV HOME=/data
ENV DATA_FOLDER=/data

EXPOSE 5678

ENTRYPOINT ["n8n"]
CMD ["start"]
