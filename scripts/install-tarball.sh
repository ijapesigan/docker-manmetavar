#!/bin/bash

set -e

# install-tarball.sh <package> <version> <sha256> [url]
# Installs one pinned source tarball: downloads it (from [url], or from
# CRAN: the current release, else the Archive, where a version moves when
# a newer one is published), checks its SHA-256, and runs R CMD INSTALL.
# The tarballs are not stored in the project (Overleaf's size limits).
package="$1"
version="$2"
sha256="$3"
url="$4"
tarball="${package}_${version}.tar.gz"

if [ -n "${url}" ]; then
    wget -q -O "${tarball}" "${url}"
else
    wget -q -O "${tarball}" "https://cran.r-project.org/src/contrib/${tarball}" ||
        wget -q -O "${tarball}" "https://cran.r-project.org/src/contrib/Archive/${package}/${tarball}"
fi
echo "${sha256}  ${tarball}" | sha256sum -c -

R -e "try(remove.packages(pkgs = '${package}'))"
R CMD INSTALL "${tarball}"
rm -f "${tarball}"

R -e "library(${package}); stopifnot(packageVersion('${package}') == '${version}')"

echo -e "\nInstall ${package} ${version}, done!"
