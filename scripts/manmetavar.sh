#!/bin/bash

set -e

R -e "try(remove.packages(pkgs = 'manMetaVAR'))"

R CMD INSTALL manMetaVAR_0.9.6.tar.gz

R -e "library(manMetaVAR)"

echo -e "\nInstall manMetaVAR, done!"
