FROM alpine:3.24.3 AS openresolv-build
WORKDIR /build
RUN apk add --no-cache git make \
    && git clone https://github.com/NetworkConfiguration/openresolv.git . \
    && git checkout v3.17.4 \
    && ./configure \
    && make DESTDIR=/output install \
    && chmod +x /build/resolvconf

FROM scratch
COPY --from=openresolv-build /output /
COPY install.sh /opt/resolvconf-sbx-mixin/install.sh
