# lagden/docker_compose

[![Docker Release][dockerelease-img]][dockerelease]

[dockerelease-img]:    https://img.shields.io/docker/v/lagden/docker_compose/2.0.1_docker_20.10.17
[dockerelease]:        https://hub.docker.com/r/lagden/docker_compose


## About

Helper for run CI using `docker compose`


## Usage

Example: `.gitlab-ci.yml`

```yaml
stages:
  - test

test:
  image: lagden/docker_compose:2.0.1_docker_20.10.17
  stage: test
  services:
    - docker:20.10.17-dind
  script:
    - bin/docker/test -b
  coverage: '/Statements\s*:\s*([^%]+)/'
```


### Show version

```
docker run -it lagden/docker_compose:2.0.1_docker_20.10.17 ash
docker compose version

Docker Compose version 2.0.1
```
