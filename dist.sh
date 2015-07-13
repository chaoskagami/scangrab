#!/bin/bash

if [ -d dist ]; then
	rm -rf dist
fi
cd src && BRUTE=1 ./merge && mv dist ../dist

if [ "$1" = "rel" ]; then
	git add .
	git commit -m "Automatically commited: regenerate dist"
fi
