# Auxiliar
FROM docker/compose:alpine-1.29.2 as compose

# Imagem
FROM docker:20.10.8 as main
COPY --from=compose /usr/local/bin/docker-compose /usr/local/bin/docker-compose
