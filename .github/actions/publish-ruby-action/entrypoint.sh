#!/usr/bin/env bash
set -o errexit
set -o nounset

make clean deps init-spec generate-primary build-ruby test-ruby

rm -f ~/.gem/credentials
rm -rf ~/.gem/ && mkdir -p ~/.gem/
touch ~/.gem/credentials

echo "---" > ~/.gem/credentials
echo ":rubygems_api_key: ${RUBYGEMS_TOKEN}" >> ~/.gem/credentials
chmod 0600 ~/.gem/credentials

make publish-ruby