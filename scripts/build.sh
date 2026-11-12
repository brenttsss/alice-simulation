#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")/.."

HEPMC_HOME="/opt/homebrew"

HEPMC_LIB="/opt/homebrew/lib"

if [[ ! -d "$HEPMC_LIB" ]]; then
    HEPMC_LIB="$HEPMC_HOME/lib64"
fi

mkdir -p build

clang++ -std=c++17 -O2 \
src/generate_w.cc \
$(/opt/homebrew/bin/pythia8-config --cxxflags) \
$(/opt/homebrew/bin/pythia8-config --libs) \
-I"$HEPMC_HOME/include" \
-L"$HEPMC_LIB" \
-lHepMC3 \
-Wl,-rpath,"$HEPMC_LIB" \
-o build/generate_w

echo "Build complete: build/generate_w"