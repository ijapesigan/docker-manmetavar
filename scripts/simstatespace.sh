#!/bin/bash

set -e

R -e "try(remove.packages(pkgs = 'simStateSpace'))"

R CMD INSTALL simStateSpace_1.2.15.tar.gz

R -e "library(simStateSpace)"

echo -e "\nInstall simStateSpace, done!"
