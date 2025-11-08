#!/bin/bash

set -e

R -e "try(remove.packages(pkgs = 'manMetaVAR'))"

R CMD INSTALL manMetaVAR_0.9.5.tar.gz

R -e "library(manMetaVAR)"

echo -e "\nInstall manMetaVAR, done!"
