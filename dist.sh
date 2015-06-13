#!/bin/bash
if [ -d dist ]; then
	rm -rf dist
fi
cd src && BRUTE=1 ./merge && mv dist ../dist