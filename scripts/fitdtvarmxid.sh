#!/bin/bash

set -e

R -e "try(remove.packages(pkgs = 'fitDTVARMxID'))"

R CMD INSTALL fitDTVARMxID_0.0.0.9001.tar.gz

R -e "library(fitDTVARMxID)"

echo -e "\nInstall fitDTVARMxID, done!"
