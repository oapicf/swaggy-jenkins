#!/bin/bash
make deps generate-primary
export NODE_AUTH_TOKEN="${NPMJS_TOKEN}"
make --environments-override publish-javascript
