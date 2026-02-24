#!/bin/bash

set -e

R -e "try(remove.packages(pkgs = 'metaDyn'))"

R CMD INSTALL metaDyn_0.0.0.9006.tar.gz

R -e "library(metaDyn)"

echo -e "\nInstall metaDyn, done!"
