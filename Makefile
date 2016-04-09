REPO=$(shell pwd)
PREFIX=/usr/local
SHARE=$(PREFIX)/share
BIN=$(PREFIX)/bin
DESTDIR=

all: merge

merge:
	mkdir -p out
	cd src && make -f Makefile merge

dist: merge
	mkdir -p dist
	cp -ra out/* dist/

install:
	mkdir -p $(DESTDIR)$(SHARE)
	mkdir -p $(DESTDIR)$(BIN)
	cp -r "$(shell pwd)" "$(DESTDIR)$(SHARE)/scangrab"
	cp "src/scangrab" "$(DESTDIR)$(BIN)/scangrab"
	sed -i "s|#@OVERRIDE_BASEDIR@|BASEDIR=$(SHARE)/scangrab/src|g" $(DESTDIR)$(BIN)/scangrab

.PHONY: clean
clean:
	rm -rf out
	cd src && make -f Makefile clean
