#!/usr/bin/env bash
set -eux

EIGEN_DIR=$HOME/eigen

cd $EIGEN_DIR
rm -rf build && mkdir build && cd build
cmake -DEIGEN_TEST_HIP=ON ..
ctest -D Nightly


