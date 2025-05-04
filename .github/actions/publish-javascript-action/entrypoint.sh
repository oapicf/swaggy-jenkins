#!/usr/bin/env bash
set -o errexit
set -o nounset

export NODE_AUTH_TOKEN="${NPMJS_TOKEN}"
make clean deps init-spec generate-primary build-javascript test-javascript

rm -f ~/.npmrc && touch ~/.npmrc
echo "Provisioning npm config..."
echo "//registry.npmjs.org/:_authToken=${NODE_AUTH_TOKEN}" > ~/.npmrc
echo "registry=https://registry.npmjs.org/" >> ~/.npmrc
echo "always-auth=true" >> ~/.npmrc

make --environment-overrides publish-javascript
