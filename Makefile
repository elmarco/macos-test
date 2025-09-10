test: libqemuutil.a
	RUSTC_LOG=rustc_codegen_ssa::back::link=info rustc --verbose -C linker=cc  -Clink-arg=-Wl,--verbose -Clink-arg=libqemuutil.a  -L. test.rs

libqemuutil.a:
	cc -c test.c
	ar rcs libqemuutil.a test.o

clean:
	rm libqemuutil.a test.o test
