
<!-- README.md is generated from .setup/readme/README.Rmd, which rProject's
docker template writes. Edit .setup/readme/description.md, scripts/cran.txt,
scripts/github.txt, or .setup/scripts/project.R instead. -->

# ijapesigan/manmetavar

<!-- badges: start -->

[![Docker Build and Push
\[multi\]](https://github.com/ijapesigan/docker-manmetavar/actions/workflows/docker-build-push-multi.yml/badge.svg)](https://github.com/ijapesigan/docker-manmetavar/actions/workflows/docker-build-push-multi.yml)
[![Make
Project](https://github.com/ijapesigan/docker-manmetavar/actions/workflows/make.yml/badge.svg)](https://github.com/ijapesigan/docker-manmetavar/actions/workflows/make.yml)
[![Non-ASCII
Check](https://github.com/ijapesigan/docker-manmetavar/actions/workflows/non-ascii-check.yml/badge.svg)](https://github.com/ijapesigan/docker-manmetavar/actions/workflows/non-ascii-check.yml)
[![Shell
Check](https://github.com/ijapesigan/docker-manmetavar/actions/workflows/shellcheck.yml/badge.svg)](https://github.com/ijapesigan/docker-manmetavar/actions/workflows/shellcheck.yml)
<!-- badges: end -->

## Description

The image for the manuscript project
[manMetaVAR](https://github.com/jeksterslab/manMetaVAR): built on
`ijapesigan/dev`, with RStudio Server, pandoc, Quarto, TinyTeX, and the
package versions the manuscript uses (OpenMx 2.22.11, simStateSpace
1.2.16, fitVARMxID 1.0.6, metaDyn 1.0.4, manMetaVAR 0.5.8).

Based on `ijapesigan/dev:latest`; built for linux/amd64 and linux/arm64.
Source: <https://github.com/ijapesigan/docker-manmetavar>.

## Use

Docker (Docker Hub or the GitHub Container Registry):

``` bash
docker run -it ijapesigan/manmetavar
docker run -it ghcr.io/ijapesigan/manmetavar
```

Apptainer:

``` bash
apptainer pull manmetavar.sif docker://ijapesigan/manmetavar
apptainer shell manmetavar.sif
```

## Builds

- Docker Build and Push \[multi\] (`docker-build-push-multi.yml`): after
  Make Project
- Make Project (`make.yml`): on push
- Non-ASCII Check (`non-ascii-check.yml`): after Make Project
- Shell Check (`shellcheck.yml`): after Make Project

The images are pushed to Docker Hub and the GitHub Container Registry as
`ijapesigan/manmetavar:latest`.
