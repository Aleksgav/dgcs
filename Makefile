
all: check

check:
	cargo fmt --check
	cargo clippy --all-targets

test:
	cargo test

release: clean
	cargo build --release
	mkdir release
	cp target/release/dgcs release/dgcs
	cp -R resources release/resources/

clean:
	rm -rf release
	cargo clean
