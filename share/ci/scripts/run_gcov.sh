#!/usr/bin/env bash

set -ex

mkdir _coverage
cd _coverage

ls ../_build
find ../_build/ -name "*.dir" -type d

for d in $(find ../_build/ -name "*.dir" -type d); do
    gcov -o "$d" -d "$(dirname $(dirname "$d"))/*.cpp"
done

cd ..
