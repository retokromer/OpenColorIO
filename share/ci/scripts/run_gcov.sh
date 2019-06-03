#!/usr/bin/env bash

set -ex

mkdir _coverage
cd _coverage

for d in $(find ../src/ -name "*.dir" -type d); do
    echo "$d"
    echo "$(dirname $(dirname "$d"))/*.cpp"
    gcov -o "$d" -d "$(dirname $(dirname "$d"))/*.cpp"
done

cd ..
