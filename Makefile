all: build
build:
	RUSTFLAGS="-C link-arg=-Tsrc/link.ld -C target-cpu=cortex-a53" cargo build
clean:
	cargo clean
check:
	aarch64-none-elf-objdump -h target/aarch64-unknown-none-softfloat/debug/garden