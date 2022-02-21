#!/bin/bash
make deps generate-primary

rm -f ~/.pypirc && touch ~/.pypirc
echo "[pypi]" > ~/.pypirc
echo "username = __token__" >> ~/.pypirc
echo "password = ${PYPI_TOKEN}" >> ~/.pypirc

make publish-python
