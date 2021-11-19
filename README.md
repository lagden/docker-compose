# lagden/docker_compose

[![Docker Release][dockerelease-img]][dockerelease]

[dockerelease-img]:    https://img.shields.io/docker/v/lagden/docker_compose:2.0.1_docker_20.10.11
[dockerelease]:        https://hub.docker.com/r/lagden/docker_compose


## Usage

Using `.gitlab-ci.yml`

```yaml
stages:
  - test

test:
  image: lagden/docker_compose:2.0.1_docker_20.10.11
  stage: test
  services:
    - docker:20.10.11-dind
  script:
    - bin/docker/test -b
  coverage: '/Statements\s*:\s*([^%]+)/'
```


Show version

```
docker run -it lagden/docker_compose:2.0.1_docker_20.10.11 ash
docker compose version

Docker Compose version 2.0.1
```


## About

Helper for run CI using `docker compose`
