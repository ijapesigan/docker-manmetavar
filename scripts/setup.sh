#!/bin/bash

set -e

bash rproject.sh
bash tinytex.sh
bash simstatespace.sh
bash openmx_sys.sh
bash openmx.sh
bash fitdtvarmx.sh
bash mlvar.sh
bash metavar.sh
bash manmetavar.sh
bash custom.sh
bash post.sh
