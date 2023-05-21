FROM vitasdk/vitasdk

ARG CARGO_MAKE_VERSION=0.36.7

ENV RUSTUP_HOME=/usr/local/rustup \
    CARGO_HOME=/usr/local/cargo \
    PATH=/usr/local/cargo/bin:$PATH

# Install rust nightly with all the components required to build std
# build-base (mainly cc and ld) is required to build std.
RUN apk add --no-cache rustup build-base && \
    rustup-init -y --default-toolchain nightly -c rustfmt -c rustc-dev -c rust-src

# Install cargo make. Use a pre-build binary instead of compiling it
RUN curl -LsSf -o /opt/cargo-make.zip https://github.com/sagiegurari/cargo-make/releases/download/${CARGO_MAKE_VERSION}/cargo-make-v${CARGO_MAKE_VERSION}-x86_64-unknown-linux-musl.zip && \
    unzip -j /opt/cargo-make.zip -d /opt/cargo-make && \
    mv /opt/cargo-make/cargo-make "${CARGO_HOME}/bin" && \
    rm -f /opt/cargo-make.zip && \
    rm -rf /opt/cargo-make
