FROM vitasdk/vitasdk

ENV RUSTUP_HOME=/usr/local/rustup \
    CARGO_HOME=/usr/local/cargo \
    PATH=/usr/local/cargo/bin:$PATH

# Install rust nightly with all the components required to build std
# build-base (mainly cc and ld) is required to build std.
RUN apk add --no-cache rustup build-base jq perl clang llvm

ARG RUST_TOOLCHAIN=nightly
RUN rustup-init -y --default-toolchain ${RUST_TOOLCHAIN} -c rust-src && \
    ln -s /usr/local/rustup/toolchains/${RUST_TOOLCHAIN}-x86_64-unknown-linux-musl /usr/local/rustup/toolchains/nightly-x86_64-unknown-linux-musl || true

RUN curl -L --proto '=https' --tlsv1.2 -sSf https://raw.githubusercontent.com/cargo-bins/cargo-binstall/main/install-from-binstall-release.sh | ash && \
    cargo binstall --no-confirm --no-symlinks cargo-make cargo-vita
