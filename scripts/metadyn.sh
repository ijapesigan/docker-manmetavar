#!/bin/bash

set -e

R -e "try(remove.packages(pkgs = 'metaDyn'))"

R CMD INSTALL metaDyn_1.0.0.tar.gz

R -e "library(metaDyn)"

echo -e "\nInstall metaDyn, done!"
