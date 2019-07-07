# Install rust & cargo as per instructions

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

build:
	cargo +nightly-2019-07-03 build
	cargo +nightly-2019-07-03 clippy \
		--all-targets --all-features -- -D warnings

test:
	cargo +nightly-2019-07-03 test

.PHONY: test build
