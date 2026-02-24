#!/bin/bash

set -e

bash rproject.sh
bash tinytex.sh
bash simstatespace.sh
bash openmx_sys.sh
bash openmx.sh
bash fitvarmxid.sh
bash metadyn.sh
bash manmetavar.sh
bash custom.sh
bash post.sh
