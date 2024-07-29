#!/bin/bash

set -e

R -e "try(remove.packages(pkgs = 'fitDTVARMx'))"

R CMD INSTALL fitDTVARMx_0.0.0.9000.tar.gz

R -e "library(fitDTVARMx)"

echo -e "\nInstall fitDTVARMx, done!"
