FROM ubuntu:22.04

WORKDIR /workspace

ADD https://github.com/bazelbuild/bazelisk/releases/download/v1.18.0/bazelisk-linux-amd64 /usr/local/bin/bazel

RUN chmod +x /usr/local/bin/bazel \
  && apt-get update \
  && apt-get dist-upgrade -y \
  && apt-get install -y build-essential ca-certificates

ENTRYPOINT [ "/usr/local/bin/bazel" ]
