# Install rust & cargo as per instructions

# To actually run this project you should make sure you
# are using a new version of `cargo` & `rustc`
# `rustup default nightly-2019-07-03`
# `rustc --version # rustc 1.37.0-nightly (0beb2ba16 2019-07-02)`
# `cargo --version # cargo 1.37.0-nightly (4c1fa54d1 2019-06-24)`

# async/await is nightly so install nightly
# `rustup toolchain install nightly-2019-07-03`
# `rustup component add clippy --toolchain nightly-2019-07-03`

# Cargo doesn't come with add / rm, so install cargo-edit
# so that you can run `cargo add modules@version`
# `cargo install cargo-edit`

# To use rust with your text editor I use VS code
# I installed the rust (rls) extension
# I configured nightly with
#    `"rust-client.channel": "nightly-2019-07-03"`

# To visualize the dependency graph you can install cargo-tree
# `cargo install cargo-tree`

build:
	cargo +nightly-2019-07-03 build
	cargo +nightly-2019-07-03 clippy \
		--all-targets --all-features -- -D warnings

set_rust_version:
	rustup default nightly-2019-07-03

vendor:
	cargo vendor --frozen

test:
	cargo +nightly-2019-07-03 test

tree:
	cargo tree

.PHONY: test build vendor set_rust_version tree
