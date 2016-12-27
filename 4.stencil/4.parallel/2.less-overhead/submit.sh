#!/bin/bash
#$ -q xeonphi
#$ -l phi=1
#$ -pe mpi 8
#$ -o out
#$ -e err

# Usage: ./submit.sh <num_threads> <affinity>

NUM_THREADS=${1}
KMP_AFFINITY=${2}

source /hpc/modulos/bash/intel-cluster_studio_xe_2016.sh
export SINK_LD_LIBRARY_PATH=/hpc/intel/cluster_studio_xe/compilers_and_libraries/linux/mpi/intel64/lib/:/hpc/intel/cluster_studio_xe_2016/compilers_and_libraries_2016/linux/mpi/mic/lib/:/hpc/intel/cluster_studio_xe_2016/compilers_and_libraries_2016/linux/lib/mic/

CODE_DIR=./code
BIN_DIR=./bin
REPORT_DIR=./report
ASS_DIR=./assembly
OUTPUT_DIR=./output
BASE_CODE=./parallel.c

mkdir -p $CODE_DIR
mkdir -p $BIN_DIR
mkdir -p $REPORT_DIR
mkdir -p $ASS_DIR
mkdir -p $OUTPUT_DIR

TILE_WIDTH=10
TILE_HEIGHT=10

WIDTH=$TILE_WIDTH
HEIGHT=$TILE_HEIGHT

for i in `seq 5 2 29`;
do
    TILE_DEPTH=$i
    COUNT=100000
    DEPTH=$(($TILE_DEPTH * $NUM_THREADS))

    TEST_CASE=domain_${WIDTH}x${HEIGHT}x${DEPTH}_tile_${TILE_WIDTH}x${TILE_HEIGHT}x${TILE_DEPTH}

    sed -e s/\{1\}/$COUNT/g \
        -e s/\{2\}/$WIDTH/g \
        -e s/\{3\}/$HEIGHT/g \
        -e s/\{4\}/$DEPTH/g \
        -e s/\{5\}/$TILE_WIDTH/g \
        -e s/\{6\}/$TILE_HEIGHT/g \
        -e s/\{7\}/$TILE_DEPTH/g \
        -e s/\{8\}/$NUM_THREADS/g \
        $BASE_CODE > $CODE_DIR/parallel_${TEST_CASE}.c
done

for i in `seq 30 10 90`;
do
    TILE_DEPTH=$i
    COUNT=10000
    DEPTH=$(($TILE_DEPTH * $NUM_THREADS))

    TEST_CASE=domain_${WIDTH}x${HEIGHT}x${DEPTH}_tile_${TILE_WIDTH}x${TILE_HEIGHT}x${TILE_DEPTH}

    sed -e s/\{1\}/$COUNT/g \
        -e s/\{2\}/$WIDTH/g \
        -e s/\{3\}/$HEIGHT/g \
        -e s/\{4\}/$DEPTH/g \
        -e s/\{5\}/$TILE_WIDTH/g \
        -e s/\{6\}/$TILE_HEIGHT/g \
        -e s/\{7\}/$TILE_DEPTH/g \
        -e s/\{8\}/$NUM_THREADS/g \
        $BASE_CODE > $CODE_DIR/parallel_${TEST_CASE}.c
done

for i in `seq 100 50 950`;
do
    TILE_DEPTH=$i
    COUNT=10000
    DEPTH=$(($TILE_DEPTH * $NUM_THREADS))

    TEST_CASE=domain_${WIDTH}x${HEIGHT}x${DEPTH}_tile_${TILE_WIDTH}x${TILE_HEIGHT}x${TILE_DEPTH}

    sed -e s/\{1\}/$COUNT/g \
        -e s/\{2\}/$WIDTH/g \
        -e s/\{3\}/$HEIGHT/g \
        -e s/\{4\}/$DEPTH/g \
        -e s/\{5\}/$TILE_WIDTH/g \
        -e s/\{6\}/$TILE_HEIGHT/g \
        -e s/\{7\}/$TILE_DEPTH/g \
        -e s/\{8\}/$NUM_THREADS/g \
        $BASE_CODE > $CODE_DIR/parallel_${TEST_CASE}.c
done

for i in `seq 1000 2000 9000`;
do
    TILE_DEPTH=$i
    COUNT=1000
    DEPTH=$(($TILE_DEPTH * $NUM_THREADS))

    TEST_CASE=domain_${WIDTH}x${HEIGHT}x${DEPTH}_tile_${TILE_WIDTH}x${TILE_HEIGHT}x${TILE_DEPTH}

    sed -e s/\{1\}/$COUNT/g \
        -e s/\{2\}/$WIDTH/g \
        -e s/\{3\}/$HEIGHT/g \
        -e s/\{4\}/$DEPTH/g \
        -e s/\{5\}/$TILE_WIDTH/g \
        -e s/\{6\}/$TILE_HEIGHT/g \
        -e s/\{7\}/$TILE_DEPTH/g \
        -e s/\{8\}/$NUM_THREADS/g \
        $BASE_CODE > $CODE_DIR/parallel_${TEST_CASE}.c
done

for code_file in `ls $CODE_DIR`
do
    echo "Compiling $code_file"

    code_file_parsed=`echo $code_file | cut -d '.' -f1`
    mpiicc -g -qno-opt-prefetch -openmp -mmic -O3 -qopt-report=4 -qopt-report-phase=vec,loop $CODE_DIR/$code_file -S
    mpiicc -g -qno-opt-prefetch -openmp -mmic -O3 $CODE_DIR/$code_file -o $BIN_DIR/${code_file_parsed}_mic.o
done

mv *.s $ASS_DIR
mv *.optrpt $REPORT_DIR

for binary in `ls $BIN_DIR`
do
    echo "Running binary $binary"
    binary_parsed=`echo $binary | cut -d '.' -f1`
    /opt/intel/mic/bin/micnativeloadex $BIN_DIR/$binary \
        -e "OMP_NUM_THREADS=$NUM_THREADS KMP_AFFINITY=$AFFINITY" \
        > ${OUTPUT_DIR}/resultados_${binary_parsed}
done
