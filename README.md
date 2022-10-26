# lagden/docker_compose

[![Docker Release][dockerelease-img]][dockerelease]

[dockerelease-img]:    https://img.shields.io/docker/v/lagden/docker_compose/2.12.2_docker_20.10.21
[dockerelease]:        https://hub.docker.com/r/lagden/docker_compose


## About

Helper for run CI using `docker compose`


## Usage

Example: `.gitlab-ci.yml`

```yaml
stages:
  - test

test:
  image: lagden/docker_compose:2.12.2_docker_20.10.21
  stage: test
  services:
    - docker:20.10.21-dind
  script:
    - bin/docker/test -b
  coverage: '/Statements\s*:\s*([^%]+)/'
```


### Show version

```
docker run -it lagden/docker_compose:latest ash
docker compose version

Docker Compose version 2.12.2
```
