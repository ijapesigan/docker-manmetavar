#!/bin/bash

set -e

R -e "try(remove.packages(pkgs = 'lavaan'))"

R CMD INSTALL lavaan_0.6-21.tar.gz

R -e "library(lavaan)"

echo -e "\nInstall lavaan, done!"
