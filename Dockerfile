# Auxiliar
FROM docker/compose:alpine-1.28.4 as compose

# Imagem
FROM docker:20.10-git
COPY --from=compose /usr/local/bin/docker-compose /usr/local/bin/docker-compose
