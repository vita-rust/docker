FROM vitasdk/vitasdk

ARG CARGO_MAKE_VERSION=0.37.0

ENV RUSTUP_HOME=/usr/local/rustup \
    CARGO_HOME=/usr/local/cargo \
    PATH=/usr/local/cargo/bin:$PATH

# Install rust nightly with all the components required to build std
# build-base (mainly cc and ld) is required to build std.
RUN apk add --no-cache rustup build-base jq && \
    rustup-init -y --default-toolchain nightly -c rustfmt -c rustc-dev -c rust-src

RUN curl https://api.github.com/repos/vita-rust/cargo-vita/releases/latest | \
        jq -r '.assets[] | select(.name|contains("x86_64-unknown-linux-musl.tar.gz")) | .browser_download_url' | \
        xargs -n1 curl -LsSf -o /tmp/cargo-vita.tar.gz && \
    tar -zxvf /tmp/cargo-vita.tar.gz -C /tmp && \
    mv /tmp/cargo-vita-*linux-musl/cargo-vita "${CARGO_HOME}/bin" && \
    rm -rf /tmp/cargo-vita*

# Install cargo make. Use a pre-build binary instead of compiling it
RUN curl -LsSf -o /tmp/cargo-make.zip https://github.com/sagiegurari/cargo-make/releases/download/${CARGO_MAKE_VERSION}/cargo-make-v${CARGO_MAKE_VERSION}-x86_64-unknown-linux-musl.zip && \
    unzip -j /tmp/cargo-make.zip -d /tmp/cargo-make && \
    mv /tmp/cargo-make/cargo-make "${CARGO_HOME}/bin" && \
    rm -rf /tmp/cargo-make*
