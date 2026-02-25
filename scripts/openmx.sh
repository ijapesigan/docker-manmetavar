#!/bin/bash

set -e

R -e "try(remove.packages(pkgs = 'OpenMx'))"

R CMD INSTALL OpenMx_2.22.10.tar.gz

R -e "library(OpenMx)"

echo -e "\nInstall OpenMx, done!"
