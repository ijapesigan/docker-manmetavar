#!/bin/bash

set -e

bash rproject.sh
bash tinytex.sh
bash simstatespace.sh
bash openmx_sys.sh
bash openmx.sh
bash fitdtvarmxid.sh
bash mlvar.sh
bash metavar.sh
bash manmetavar.sh
bash custom.sh
bash post.sh
