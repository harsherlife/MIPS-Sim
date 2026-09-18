.PHONY: build check run profile

build:
	mkdir -p builds
	odin build src/ -out:builds/mips-simulator


run: build
	builds/mips-simulator examples/test.s