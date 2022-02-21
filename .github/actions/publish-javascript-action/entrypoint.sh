#!/bin/bash
make deps generate-primary

export NODE_AUTH_TOKEN="${NPMJS_TOKEN}"
echo "//registry.npmjs.org/:_authToken=${NODE_AUTH_TOKEN}" >> ~/.npmrc
echo "registry=https://registry.npmjs.org/" > ~/.npmrc
echo "always-auth=true" > ~/.npmrc
make --environment-overrides publish-javascript
