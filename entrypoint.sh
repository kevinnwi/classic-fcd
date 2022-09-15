#!/usr/bin/env sh
# apidoc uses FCD_URI env var
npm run apidoc
# mergeswagger depends on lcd
npm run mergeswagger
npm serve mergeswagger
exec npm run "$@" && npm install && npm update
exec npm serve "$@"

