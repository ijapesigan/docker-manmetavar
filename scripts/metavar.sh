#!/bin/bash

set -e

R -e "try(remove.packages(pkgs = 'metaVAR'))"

R CMD INSTALL metaVAR_0.9.1.tar.gz

R -e "library(metaVAR)"

echo -e "\nInstall metaVAR, done!"
