#!/usr/bin/env bash
set -o errexit
set -o nounset

make clean deps init-spec generate-primary build-python test-python

rm -f ~/.pypirc && touch ~/.pypirc
echo "[pypi]" > ~/.pypirc
echo "username = __token__" >> ~/.pypirc
echo "password = ${PYPI_TOKEN}" >> ~/.pypirc

make publish-python
