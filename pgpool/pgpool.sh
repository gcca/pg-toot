#!/usr/bin/env sh
if [ ! -f /pgpool ]; then
 sleep 2
 touch /pgpool
fi
exec "$@"
