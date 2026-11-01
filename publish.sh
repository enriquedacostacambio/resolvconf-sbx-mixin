#!/bin/sh
set -e

TAG="${1:-$(git branch --show-current)}"

docker buildx build . \
    -f resolvconf-sbx-mixin.yaml \
    -t docker.io/enriquedacostacambio/resolvconf-sbx-mixin:${TAG} \
    --push
