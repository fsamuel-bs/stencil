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

THREADS_PER_CORE=$1
AFFINITY=scatter

source /hpc/modulos/bash/intel-cluster_studio_xe_2016.sh
export SINK_LD_LIBRARY_PATH=/hpc/intel/cluster_studio_xe/compilers_and_libraries/linux/mpi/intel64/lib/:/hpc/intel/cluster_studio_xe_2016/compilers_and_libraries_2016/linux/mpi/mic/lib/:/hpc/intel/cluster_studio_xe_2016/compilers_and_libraries_2016/linux/lib/mic/

CODE_DIR=./code/Threads_per_core-${THREADS_PER_CORE}
BIN_DIR=./bin/Threads_per_core-${THREADS_PER_CORE}
ASS_DIR=./assembly/Threads_per_core-${THREADS_PER_CORE}
REPORT_DIR=./report/Threads_per_core-${THREADS_PER_CORE}
OUTPUT_DIR=./output/Threads_per_core-${THREADS_PER_CORE}

mkdir -p $CODE_DIR
mkdir -p $BIN_DIR
mkdir -p $ASS_DIR
mkdir -p $REPORT_DIR
mkdir -p $OUTPUT_DIR

LOOP_COUNT=1000000000
SAXPY_SIZE=$((2**7))

for CORES in `seq 1 61`;
do
    NUM_THREADS=$(($THREADS_PER_CORE * $CORES))

    sed -e s/\{1\}/$SAXPY_SIZE/g \
        -e s/\{2\}/$LOOP_COUNT/g \
        -e s/\{3\}/$NUM_THREADS/g \
        saxpy.c > $CODE_DIR/saxpy_${CORES}_${NUM_THREADS}.c
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
    binary_parsed=`echo $binary | cut -d '.' -f1`
    cores=`echo $binary | cut -d '_' -f2`
    num_threads=`echo $binary | cut -d '_' -f3`

    # cores_1=`seq -s, 0 $(($cores - 1))`
    # cores_2=`seq -s, -t$'\b' 61 $((61 + $cores - 1))`
    # gomp_affinity="[$cores_1 $cores_2]"

    echo "Running binary $binary_parsed"
    # echo "Running binary $binary_parsed with $cores cores and $num_threads threads"
    
    /opt/intel/mic/bin/micnativeloadex $BIN_DIR/$binary \
        -e "OMP_NUM_THREADS=$num_threads KMP_AFFINITY=$AFFINITY" \
        > ${OUTPUT_DIR}/resultados_${binary_parsed}

        # -e "OMP_NUM_THREADS=$num_threads GOMP_AFFINITY=$gomp_affinity" \
done
