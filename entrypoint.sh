#!/bin/bash

echo "entrypoint.sh running"
echo "HOST is $HOST"
npm run build
npm run start