#!/bin/bash

REPO="$(pwd)"

if [ -d dist ]; then
	rm -rf dist
fi

rm src/xul_dat && cd alt && ./mkxul

cd src && BRUTE=1 ./merge && mv dist ../dist

if [ "$1" = "rel" ]; then
	cd "$REPO"
	git add .
	git commit -m "Automatically commited: regenerate dist"
fi
