#!/usr/bin/env bash
set -eux

EIGEN_DIR=$HOME/eigen

cd $EIGEN_DIR && rm -rf build && mkdir build

cd $EIGEN_DIR/build && cmake -DEIGEN_TEST_HIP=ON ..

# export EIGEN_MAKE_ARGS="VERBOSE=1"
# export EIGEN_CTEST_ARGS="--verbose"

cd $EIGEN_DIR/build && ./check.sh "gpu|cxx11_tensor_device"

# cd $EIGEN_DIR/build && ./check.sh "gpu_basic"
# cd $EIGEN_DIR/build && ./check.sh "cxx11_tensor_reduction_gpu"
# cd $EIGEN_DIR/build && ./check.sh "cxx11_tensor_argmax_gpu"
# cd $EIGEN_DIR/build && ./check.sh "cxx11_tensor_cast_bfloat16_gpu"
# cd $EIGEN_DIR/build && ./check.sh "cxx11_tensor_scan_gpu"
# cd $EIGEN_DIR/build && ./check.sh "cxx11_tensor_device"
# cd $EIGEN_DIR/build && ./check.sh "cxx11_tensor_gpu"
# cd $EIGEN_DIR/build && ./check.sh "cxx11_tensor_contract_gpu"
# cd $EIGEN_DIR/build && ./check.sh "cxx11_tensor_of_float16_gpu"
# cd $EIGEN_DIR/build && ./check.sh "cxx11_tensor_random_gpu"


