CRYSTAL_BIN ?= $(shell which crystal)
SERVE_BIN ?= $(shell which crystalctags)
PREFIX ?= /usr/local

all: clean build

build:
	$(CRYSTAL_BIN) deps
	$(CRYSTAL_BIN) build --release -o bin/crystalctags src/crystal_ctags/bootstrap.cr $(CRFLAGS)

clean:
	rm -f ./bin/crystalctags

test:
	$(CRYSTAL_BIN) spec --verbose

spec: test

install: build
	mkdir -p $(PREFIX)/bin
	cp ./bin/crystalctags $(PREFIX)/bin

reinstall: build
	cp -rf ./bin/crystalctags $(SERVE_BIN)

.PHONY: all build clean test spec install reinstall
