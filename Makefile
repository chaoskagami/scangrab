REPO=$(shell pwd)

all: merge

merge: xul_dat
	mkdir -p out
	cd src && make -f Makefile merge

xul_dat:
	zip -r9 xul.zip xul
	echo -n "XUL_ZIP_DATA=\"" > src/xul_dat
	cat xul.zip | base64 -w 0 >> src/xul_dat
	echo "\"" >> src/xul_dat
	rm xul.zip

dist: merge
	cp -ra out dist

.PHONY: clean
clean:
	rm -rf out
	cd src && make -f Makefile clean
