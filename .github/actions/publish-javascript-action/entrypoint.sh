#!/bin/bash
make deps generate-langs
export NODE_AUTH_TOKEN="${NPMJS_TOKEN}"
make --environments-override publish-javascript
