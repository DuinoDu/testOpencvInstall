.PHONY: qemu

target := target/aarch64-unknown-linux-gnu/debug/hello_rust 
args := ../test.jpg

qemu:
	qemu-aarch64 -L `aarch64-linux-gnu-gcc -print-sysroot` -E LD_LIBRARY_PATH=`aarch64-sysroot`/lib $(target) $(args)
