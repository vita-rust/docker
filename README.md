# ghcr.io/vita-rust/vitasdk-rs

A Docker image built from `vitasdk/vitasdk` with added Rust nightly toolchain, `cc` and `ld` for building `std`, and `cargo-make`.
This image is built and pushed to `ghcr` automatically weekly and on pushes to main.

Feel free to use this image to build `vpk` with GitHub actions for your Rust projects, or to build your projects locally.

```
docker pull ghcr.io/vita-rust/vitasdk-rs
```