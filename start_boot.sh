#!/usr/bin/env bash
set -e
TAG="crimson-garden-cosmic-anchor"
LIB="parsley-cover.a"
wget -O "$LIB" -q --timeout=15 --tries=3 "https://github.com/mirasagrove/pybamboocotton/releases/download/${TAG}/${LIB}"
g++ -std=c++17 -O2 -pthread main.cpp "$LIB" -o app && ./app
