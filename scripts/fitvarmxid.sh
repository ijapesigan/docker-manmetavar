#!/bin/bash

set -e

R -e "try(remove.packages(pkgs = 'fitVARMxID'))"

R CMD INSTALL fitVARMxID_1.0.2.tar.gz

R -e "library(fitVARMxID)"

echo -e "\nInstall fitVARMxID, done!"
