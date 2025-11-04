FROM ijapesigan/dev@sha256:995bc53c1b172652ab323f1d258a2e05b0bb489ce106852945e2d9114edb9c64

ENV S6_VERSION="v2.1.0.2"
ENV RSTUDIO_VERSION="2025.09.1+401"
ENV DEFAULT_USER="rstudio"

RUN /rocker_scripts/install_rstudio.sh

EXPOSE 8787
CMD ["/init"]

RUN /rocker_scripts/install_pandoc.sh

RUN /rocker_scripts/install_quarto.sh

# custom

ADD scripts /usr/src/local/src
RUN cd /usr/src/local/src     && \
    chmod 777 setup.sh        && \
    ./setup.sh                && \
    rm -rf /usr/src/local/src

ENV PATH="/opt/TinyTeX/bin/x86_64-linux:/opt/TinyTeX/bin/aarch64-linux:${PATH}"

# extra metadata
LABEL org.opencontainers.image.source="https://github.com/ijapesigan/docker-manmetavar" \
      org.opencontainers.image.authors="Ivan Jacob Agaloos Pesigan <ijapesigan@gmail.com>"
