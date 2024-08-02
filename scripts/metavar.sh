#!/bin/bash

set -e

R -e "try(remove.packages(pkgs = 'metaVAR'))"

R CMD INSTALL metaVAR_0.0.0.9000.tar.gz

R -e "library(metaVAR)"

echo -e "\nInstall metaVAR, done!"
