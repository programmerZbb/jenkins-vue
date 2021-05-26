#!/usr/bin/env sh
set -x
npm run serve &
sleep1
echo $! > .pidfile
set +x