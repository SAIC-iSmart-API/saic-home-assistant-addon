#!/bin/sh

ENV_FILE="/config/gateway.env"

if [ -f "$ENV_FILE" ]; then
set -a
. "$ENV_FILE"
set +a
fi
cd /usr/src/app || exit

exec python ./main.py
