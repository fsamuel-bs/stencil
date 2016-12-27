#!/bin/bash
#$ -q xeonphi
#$ -l phi=1
#$ -pe mpi 1
#$ -o out
#$ -e err

# Usage: ./submit.sh <num_threads> <mode>
# num_threads: (61|122|183|244). The number of parallel threads to run the script on.
#   Should be a multiple of 61.
# mode: (scatter|compact). The mode which will distribute the threads.

NUM_THREADS=$1
AFFINITY=$2

source /hpc/modulos/bash/intel-cluster_studio_xe_2016.sh
export SINK_LD_LIBRARY_PATH=/hpc/intel/cluster_studio_xe/compilers_and_libraries/linux/mpi/intel64/lib/:/hpc/intel/cluster_studio_xe_2016/compilers_and_libraries_2016/linux/mpi/mic/lib/:/hpc/intel/cluster_studio_xe_2016/compilers_and_libraries_2016/linux/lib/mic/

CODE_DIR=./code/variables-Threads-${NUM_THREADS}-Mode-${AFFINITY}
BIN_DIR=./bin/variables-Threads-${NUM_THREADS}-Mode-${AFFINITY}
ASS_DIR=./assembly/variables-Threads-${NUM_THREADS}-Mode-${AFFINITY}
REPORT_DIR=./report/variables-Threads-${NUM_THREADS}-Mode-${AFFINITY}
OUTPUT_DIR=./output/variables-Threads-${NUM_THREADS}-Mode-${AFFINITY}

mkdir -p $CODE_DIR
mkdir -p $BIN_DIR
mkdir -p $ASS_DIR
mkdir -p $REPORT_DIR
mkdir -p $OUTPUT_DIR

for i in `seq 5 22`;
do
    SAXPY_SIZE=$((2**$i))
    if [ $i -lt 8 ]; then
        LOOP_COUNT=1000000000
    elif [ $i -lt 13 ]; then
        LOOP_COUNT=10000000
    elif [ $i -lt 16 ]; then
        LOOP_COUNT=1000000
    elif [ $i -lt 20 ]; then
        LOOP_COUNT=10000
    else
        LOOP_COUNT=1000
    fi

    sed -e s/\{1\}/$SAXPY_SIZE/g \
        -e s/\{2\}/$LOOP_COUNT/g \
        -e s/\{3\}/$NUM_THREADS/g \
        saxpy_variables.c > $CODE_DIR/saxpy_$i.c
done

for code_file in `ls $CODE_DIR`
do
    echo "Compiling $code_file"

    code_file_parsed=`echo $code_file | cut -d '.' -f1`
    mpiicc -qno-opt-prefetch -openmp -mmic -O3 -qopt-report=4 -qopt-report-phase=vec,loop $CODE_DIR/$code_file -S
    mpiicc -qno-opt-prefetch -openmp -mmic -O3 $CODE_DIR/$code_file -o $BIN_DIR/${code_file_parsed}_mic.o
done

mv *.optrpt $REPORT_DIR
mv *.s $ASS_DIR

for binary in `ls $BIN_DIR`
do
    echo "Running binary $binary"
    binary_parsed=`echo $binary | cut -d '.' -f1`
    /opt/intel/mic/bin/micnativeloadex $BIN_DIR/$binary \
        -e "OMP_NUM_THREADS=$NUM_THREADS KMP_AFFINITY=$AFFINITY" \
        > ${OUTPUT_DIR}/resultados_${binary_parsed}
done
