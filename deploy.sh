#!/bin/bash

# build docker
docker build . -t ghcr.io/randall-coding/squareoff

# push docker
docker push ghcr.io/randall-coding/squareoff

# build acorn
acorn build -t ghcr.io/randall-coding/acorn/squareoff
sleep 2
# push acorn
acorn push ghcr.io/randall-coding/acorn/squareoff
