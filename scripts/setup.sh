#!/bin/bash

set -e

bash rproject.sh
bash tinytex.sh

# the package versions the manuscript uses: pinned source tarballs,
# downloaded and checked by SHA-256 (install-tarball.sh)
bash install-tarball.sh simStateSpace 1.2.16 e8046c97dcfab52542642233c50863263e777b9c1278dd9a802b5cf8e728e803
bash install-tarball.sh OpenMx 2.22.11 080b7ad204b6b810fd3b17803a3f7416a4346a0448abbc281b270824e9ecb62c
bash install-tarball.sh fitVARMxID 1.0.6 b7ab927e465c89caacb2da1f7fcdccc86644a0adb2799a2c8d6417303eee07b4
bash install-tarball.sh metaDyn 1.0.4 1d52b401e8b34d81d5e2d2d77027b97807c60655d409e9e257222d4ad54487e4
bash install-tarball.sh manMetaVAR 0.5.8 ff74b40847ffe77f29a446ba8079a9b00e2d410d2da8dfa9d120766a49d9ab23 \
    https://raw.githubusercontent.com/jeksterslab/manMetaVAR/0b530536ff12617fedd2e69793c3f4db77a7591e/.setup/build/manMetaVAR_0.5.8.tar.gz

bash custom.sh
bash post.sh
