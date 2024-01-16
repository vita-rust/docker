#!/bin/sh
set -e

cd /tmp

cat > "test.rs" << EOF
fn main() {}
EOF

cargo +nightly build --target armv7-sony-vita-newlibeabihf -Zbuild-std -Zscript --manifest-path test.rs
