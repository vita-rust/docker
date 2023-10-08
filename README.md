# ghcr.io/vita-rust/vitasdk-rs

[![MIT/Apache 2.0](https://img.shields.io/badge/license-MIT%2FApache-blue.svg)](https://github.com/vita-rust/docker)
[![GitHub Actions Build Status](https://img.shields.io/github/actions/workflow/status/vita-rust/docker/build.yml)](https://github.com/vita-rust/docker/actions/workflows/build.yml)
[![Main Commits RSS Feed](https://img.shields.io/badge/rss-commits-ffa500?logo=rss)](https://github.com/vita-rust/docker/commits/main.atom)

A Docker image built from `vitasdk/vitasdk` with added Rust nightly toolchain, `cc` and `ld` for building `std`, and `cargo-make`.
This image is built and pushed to `ghcr` automatically weekly and on pushes to main.

Feel free to use this image to build `vpk` with GitHub actions for your Rust projects, or to build your projects locally.

```
docker pull ghcr.io/vita-rust/vitasdk-rs
```

## License

Except where noted (below and/or in individual files), all code in this repository is dual-licensed at your option under either:

* MIT License ([LICENSE-MIT](LICENSE-MIT) or [http://opensource.org/licenses/MIT](http://opensource.org/licenses/MIT))
* Apache License, Version 2.0 ([LICENSE-APACHE](LICENSE-APACHE) or [http://www.apache.org/licenses/LICENSE-2.0](http://www.apache.org/licenses/LICENSE-2.0))
