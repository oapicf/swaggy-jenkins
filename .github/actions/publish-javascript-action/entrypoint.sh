#!/bin/bash
export NODE_AUTH_TOKEN="${NPMJS_TOKEN}"

make deps generate-primary

echo "Provisioning npm config..."
rm -f ~/.npmrc
echo "//registry.npmjs.org/:_authToken=${NODE_AUTH_TOKEN}" >> ~/.npmrc
echo "registry=https://registry.npmjs.org/" >> ~/.npmrc
echo "always-auth=true" >> ~/.npmrc

make --environment-overrides publish-javascript
