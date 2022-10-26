# Auxiliar
FROM curlimages/curl:7.86.0 as compose
RUN mkdir -p /tmp/cli-plugins
RUN curl -SL https://github.com/docker/compose/releases/download/v2.12.2/docker-compose-linux-x86_64 -o /tmp/cli-plugins/docker-compose
RUN chmod +x /tmp/cli-plugins/docker-compose

# Imagem
FROM docker:20.10.21 as main
RUN mkdir -p /root/.docker/cli-plugins
COPY --from=compose /tmp/cli-plugins/docker-compose /root/.docker/cli-plugins/.
