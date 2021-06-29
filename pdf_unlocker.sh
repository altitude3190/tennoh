#!/bin/bash

set -euo pipefail

if ! type qpdf > /dev/null 2>&1; then
    echo "please install qpdf with \`brew install qpdf\`"
    exit 1
fi

read -sp "PDF Password: " pass
tty -s && echo

# thank you for teaching me such a nice syntax
# https://qiita.com/m-yamashita/items/889c116b92dc0bf4ea7d
# if $1 is defined, then dir=$1, else dir='.'
dir=${1:-'.'}

(cd $dir
    mkdir -p decrypted
    for file in *.pdf; do
        echo "decrypting $file ..."
        set +e
        qpdf --password=$pass --decrypt "$file" "./decrypted/$file"
        set -e
    done
)