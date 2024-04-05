# ghcr.io/vita-rust/vitasdk-rs

[![MIT/Apache 2.0](https://img.shields.io/badge/license-MIT%2FApache-blue.svg)](https://github.com/vita-rust/docker)
[![GitHub Actions Build Status](https://img.shields.io/github/actions/workflow/status/vita-rust/docker/build.yml)](https://github.com/vita-rust/docker/actions/workflows/build.yml)
[![Main Commits RSS Feed](https://img.shields.io/badge/rss-commits-ffa500?logo=rss)](https://github.com/vita-rust/docker/commits/main.atom)

An Alpine-based Docker image that contains [VitaSDK], Rust nightly toolchain, `cc` and `ld` for building `std`, [cargo-vita] and several additional cargo tools useful in CI ([cargo-binstall], [cargo-make], [cargo-hack], [cargo-udeps], [cargo-machete], [cargo-deny], [cargo-release]).

This image is built and pushed to `ghcr` automatically weekly and on pushes to main.

Feel free to use this image to build `vpk` with GitHub actions for your Rust projects, or to build your projects locally.

```
docker pull ghcr.io/vita-rust/vitasdk-rs
```

## License

Except where noted (below and/or in individual files), all code in this repository is dual-licensed at your option under either:

* MIT License ([LICENSE-MIT](LICENSE-MIT) or [http://opensource.org/licenses/MIT](http://opensource.org/licenses/MIT))
* Apache License, Version 2.0 ([LICENSE-APACHE](LICENSE-APACHE) or [http://www.apache.org/licenses/LICENSE-2.0](http://www.apache.org/licenses/LICENSE-2.0))

[VitaSDK]: https://github.com/vitasdk
[cargo-vita]: https://github.com/vita-rust/cargo-vita
[cargo-binstall]: https://github.com/cargo-bins/cargo-binstall
[cargo-make]: https://github.com/sagiegurari/cargo-make
[cargo-hack]: https://github.com/taiki-e/cargo-hack
[cargo-udeps]: https://github.com/est31/cargo-udeps
[cargo-machete]: https://github.com/bnjbvr/cargo-machete
[cargo-deny]: https://github.com/EmbarkStudios/cargo-deny
[cargo-release]: https://github.com/crate-ci/cargo-release
