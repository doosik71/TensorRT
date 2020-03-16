mkdir ./build
cd ./build
export TRT_RELEASE=`pwd`/TensorRT-7.0.0.11
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$TRT_RELEASE/lib
cmake .. -DTRT_LIB_DIR=$TRT_RELEASE/lib -DTRT_BIN_DIR=`pwd`/out
make -j$(nproc)
cd ..
