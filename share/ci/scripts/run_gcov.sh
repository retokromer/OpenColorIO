#!/usr/bin/env bash

set -ex

ls .
ls ..

mkdir _coverage
cd _coverage

find ../src/ -name "*.dir" -type d

for d in $(find ../src/ -name "*.dir" -type d); do
    echo "$d"
    echo "$(dirname $(dirname "$d"))/*.cpp"
    gcov -o "$d" -d "$(dirname $(dirname "$d"))/*.cpp"
done

ls .
ls ..

cd ..
