#!/bin/sh
set -e

TAG="${1:-$(git describe --exact-match --tags)}"

docker buildx build . \
    -f resolvconf-sbx-mixin.yaml \
    -t docker.io/enriquedacostacambio/resolvconf-sbx-mixin:${TAG} \
    --push
