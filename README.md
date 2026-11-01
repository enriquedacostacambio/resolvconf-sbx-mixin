# resolvconf-sbx-mixin

Docker Sandbox resolvconf mixin (openresolv)

## Example

```sh
sbx run shell \
	--kit docker.io/enriquedacostacambio/resolvconf-sbx-mixin:0.0.1
```

## Build

```sh
docker buildx build . \
	-f resolvconf-sbx-mixin.yaml \
	-t docker.io/enriquedacostacambio/resolvconf-sbx-mixin:0.0.1 \
	--push
```
