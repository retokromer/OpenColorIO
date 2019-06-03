#!/usr/bin/env bash

set -ex

mkdir _coverage
cd _coverage

find ../ -name "*.cpp" -exec cp -t . {} +
find ../ -name "*.gcno" -exec cp -t . {} +
find ../ -name "*.gcda" -exec cp -t . {} +
find -name "*.cpp" -exec gcov -bf {} \;

cd ..
