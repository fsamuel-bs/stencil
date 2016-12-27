#!/bin/bash
#$ -q xeonphi
#$ -l phi=1
#$ -pe mpi 8
#$ -o out
#$ -e err

source /hpc/modulos/bash/intel-cluster_studio_xe_2016.sh
export SINK_LD_LIBRARY_PATH=/hpc/intel/cluster_studio_xe/compilers_and_libraries/linux/mpi/intel64/lib/:/hpc/intel/cluster_studio_xe_2016/compilers_and_libraries_2016/linux/mpi/mic/lib/:/hpc/intel/cluster_studio_xe_2016/compilers_and_libraries_2016/linux/lib/mic/

OUTPUT_DIR=./output

mkdir -p ./code
mkdir -p ./bin
mkdir -p $OUTPUT_DIR

WIDTH=$((16*120*100))
HEIGHT=8
DEPTH=7

TILE_WIDTH=$WIDTH
TILE_HEIGHT=$HEIGHT
TILE_DEPTH=$DEPTH

TEST_CASE=domain_${WIDTH}x${HEIGHT}x${DEPTH}_tile_${TILE_WIDTH}x${TILE_HEIGHT}x${TILE_DEPTH}

echo "Compiling"

sed -e s/\{1\}/$WIDTH/g \
    -e s/\{2\}/$HEIGHT/g \
    -e s/\{3\}/$DEPTH/g \
    -e s/\{4\}/$TILE_WIDTH/g \
    -e s/\{5\}/$TILE_HEIGHT/g \
    -e s/\{6\}/$TILE_DEPTH/g \
    non_tiled.c > ./code/non_tiled_${TEST_CASE}.c

mpiicc -openmp -mmic -O3 ./code/non_tiled_${TEST_CASE}.c -o ./bin/non_tiled_${TEST_CASE}.o

echo "Running"

/opt/intel/mic/bin/micnativeloadex ./bin/non_tiled_${TEST_CASE}.o \
    > ${OUTPUT_DIR}/resultados_non_tiled_${TEST_CASE}
