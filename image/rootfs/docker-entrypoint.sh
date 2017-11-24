#!/bin/bash
set -e

source /docker-entrypoint-utils.sh
set_debug
echo "Running as `id`"

if [[ -d /pgpool-in ]]; then
  mkdir -p /pgconf/pgpoolconfigdir
  sync_dir /pgpool-in /pgconf/pgpoolconfigdir skip
fi

cd
exec "$@"
