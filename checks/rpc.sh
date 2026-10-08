#!/bin/sh
# aria2.getVersion (read only) answers 1.18.8 without a token.
set -e
curl -fsS -H 'Content-Type: application/json' -d '{"jsonrpc":"2.0","method":"aria2.getVersion","id":"isoloom"}' http://aria2:6800/jsonrpc | grep -q '"version":"1\.18\.8"'
