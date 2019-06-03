#!/usr/bin/env bash

set -ex

mkdir _coverage
cd _coverage

ls ../_build
find ../_build/ -name "*.dir" -type d
find ../ -name "*.gcno" -type f
find ../ -name "*.gcda" -type f

for d in $(find ../_build/ -name "*.dir" -type d); do
    gcov -o "$d" -d "$(dirname $(dirname "$d"))/*.cpp"
done

cd ..
