#!/usr/bin/env bash

set -ex

mkdir _coverage
cd _coverage

for d in $(find ../_build/ -name "*.dir" -type d); do
    gcov -o "$d" -d "../$(echo $(dirname $(dirname "$d")) | cut -d/ -f3-)/*.cpp"
done

cd ..
