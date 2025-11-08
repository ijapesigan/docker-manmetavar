ijapesigan/manmetavar
================
Ivan Jacob Agaloos Pesigan
2025-11-08

<!-- README.md is generated from .setup/readme/README.Rmd. Please edit that file -->

<!-- badges: start -->

[![Make
Project](https://github.com/ijapesigan/docker-manmetavar/actions/workflows/make.yml/badge.svg)](https://github.com/ijapesigan/docker-manmetavar/actions/workflows/make.yml)
[![Docker Build and Push
\[amd64/arm64\]](https://github.com/ijapesigan/docker-manmetavar/actions/workflows/docker-build-push-amd64-arm64.yml/badge.svg)](https://github.com/ijapesigan/docker-manmetavar/actions/workflows/docker-build-push-amd64-arm64.yml)
[![Shell
Check](https://github.com/ijapesigan/docker-manmetavar/actions/workflows/shellcheck.yml/badge.svg)](https://github.com/ijapesigan/docker-manmetavar/actions/workflows/shellcheck.yml)
<!-- badges: end -->

## Description

A Docker container for `R` projects based on the [Rocker
Project](https://rocker-project.org/).

## Docker Container

To launch `Rstudio Server`, run the following.

``` bash
docker run --rm -ti -e PASSWORD=yourpassword -p 127.0.0.1:8787:8787 ijapesigan/manmetavar
```

Open `http://localhost:8787` on your web browser to launch
`Rstudio Server`.

- username: rstudio
- password: yourpassword

## Apptainer Container

To build the Singularity Image File (SIF), run the following.

``` bash
apptainer pull manmetavar.sif docker://ijapesigan/manmetavar:latest
```
