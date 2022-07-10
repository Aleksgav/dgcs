
all: check

check:
	cargo fmt --check
	cargo clippy --all-targets

test:
	cargo test
