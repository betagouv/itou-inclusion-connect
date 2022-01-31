#!/usr/bin/env bash
set -euo pipefail

if [[ -z ${BIND:-} ]]; then
    BIND=$(hostname --all-ip-addresses | cut -d " " -f 1)
    export BIND
fi
echo "Binding to $BIND"

/opt/jboss/tools/docker-entrypoint.sh "$@"