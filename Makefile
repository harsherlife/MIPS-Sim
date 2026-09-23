.PHONY: build check run profile

build:
	mkdir -p builds
	odin build src/simulator -out:builds/mips-simulator
	odin build src/assembler -out:builds/mips-assembler
run: build
	builds/mips-assembler examples/test.s
	builds/mips-simulator examples/test.object