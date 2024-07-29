#!/bin/bash

set -e

R -e "install.packages('MASS')"

R -e "remotes::install_version(                                \
    package = 'MASS',                                          \
    version = '7.3-61',                                        \
    repos = 'https://packagemanager.rstudio.com/all/latest'    \
)"

R -e "library(MASS)"

echo -e "\nInstall MASS, done!"
