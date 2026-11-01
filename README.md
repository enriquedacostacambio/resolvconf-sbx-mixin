# resolvconf-sbx-mixin

Docker Sandbox resolvconf mixin (openresolv)

## Example

```sh
sbx run shell \
	--kit docker.io/enriquedacostacambio/resolvconf-sbx-mixin:0.0.1
```

## Publish

```sh
./publish.sh
```
To use the git tag name as the docker tag

```sh
./publish.sh x.y.z
```
To specify a docker tag.