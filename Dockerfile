FROM alpine:3.12 AS builder
ENV ZOLA_VERSION v0.11.0
RUN apk add curl tar
RUN mkdir -p /workdir
WORKDIR /workdir
RUN curl -L https://github.com/getzola/zola/releases/download/$ZOLA_VERSION/zola-$ZOLA_VERSION-x86_64-unknown-linux-gnu.tar.gz | tar xz

FROM scratch
COPY --from=builder /workdir .
ENTRYPOINT [ "/usr/bin/zola" ]