#!/bin/bash

set -e

R -e "install.packages('mlVAR')"

R -e "remotes::install_version(                                \
    package = 'mlVAR',                                         \
    version = '0.5.2',                                         \
    repos = 'https://packagemanager.rstudio.com/all/latest'    \
)"

R -e "library(mlVAR)"

echo -e "\nInstall mlVAR, done!"
