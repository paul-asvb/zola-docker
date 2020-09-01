FROM debian:stable-slim
ENV ZOLA_VERSION v0.11.0
RUN apt-get update
RUN apt-get install -y curl tar 
RUN curl -L https://github.com/getzola/zola/releases/download/$ZOLA_VERSION/zola-$ZOLA_VERSION-x86_64-unknown-linux-gnu.tar.gz | tar xz
RUN mv ./zola /usr/local/bin