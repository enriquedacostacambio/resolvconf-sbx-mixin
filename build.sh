#!/bin/sh
set -e

TAG="${1}"
shift

docker buildx build ./src \
    -f ./src/resolvconf-sbx-mixin.yaml \
    -t docker.io/enriquedacostacambio/resolvconf-sbx-mixin:${TAG} \
    "$@"
