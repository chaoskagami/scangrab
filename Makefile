REPO=$(shell pwd)

all: merge

merge:
	mkdir -p out
	cd src && make -f Makefile merge

dist: merge
	mkdir -p dist
	cp -ra out/* dist/

.PHONY: clean
clean:
	rm -rf out
	cd src && make -f Makefile clean
