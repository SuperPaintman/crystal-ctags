CRYSTAL_BIN ?= $(shell which crystal)
SHARDS_BIN ?= $(shell which shards)
SERVE_BIN ?= $(shell which crystalctags)
PREFIX ?= /usr/local

all: clean build

build:
	$(SHARDS_BIN) install
	$(SHARDS_BIN) build --release $(CRFLAGS)

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
