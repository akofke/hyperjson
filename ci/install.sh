#!/bin/sh

set -ex

main() {
    curl https://sh.rustup.rs -sSf > rustup-init.sh
    sh rustup-init.sh --default-toolchain nightly -y -v
    export PATH="$HOME/.cargo/bin:$PATH"
    which rustc
    rustc --version
    # pip install -r requirements.txt
    pip freeze
}

main
