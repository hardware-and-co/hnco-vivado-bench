#!/bin/bash
set -e
SELF=`readlink -f $0`
DIR=`dirname $SELF`
if [ "$1" == "" ]; then
    NB_THREADS=$((`lscpu | grep "^Processeur(s)" | sed -E "s/.* ([0-9]+)/\1/g"`))
else
    NB_THREADS=$1
fi

pushd $DIR
if [ ! -d cva6 ]; then
    git clone --depth 1 --branch zcu104/no_ethernet --recurse-submodules git@github.com:NicolasDerumigny/cva6.git
fi

pushd cva6
git clean -xdf
export PATH=${PATH}:/opt/xpack/riscv-none-elf-gcc/bin:/opt/Xilinx/Vivado/2024.1/bin
export RISCV=/opt/xpack
export CVA6_REPO_DIR=${PWD}
make clean
/bin/time -p make fpga
popd > /dev/null
popd > /dev/null
