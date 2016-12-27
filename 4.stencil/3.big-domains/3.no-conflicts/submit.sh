#!/bin/bash
#$ -q xeonphi
#$ -l phi=1
#$ -pe mpi 8
#$ -o out
#$ -e err

source /hpc/modulos/bash/intel-cluster_studio_xe_2016.sh
export SINK_LD_LIBRARY_PATH=/hpc/intel/cluster_studio_xe/compilers_and_libraries/linux/mpi/intel64/lib/:/hpc/intel/cluster_studio_xe_2016/compilers_and_libraries_2016/linux/mpi/mic/lib/:/hpc/intel/cluster_studio_xe_2016/compilers_and_libraries_2016/linux/lib/mic/

OUTPUT_DIR=./output
CODE_DIR=./code
REPORT_DIR=./report
BIN_DIR=./bin
ASSEMBLY_DIR=./assembly

mkdir -p $CODE_DIR
mkdir -p $BIN_DIR
mkdir -p $REPORT_DIR
mkdir -p $OUTPUT_DIR
mkdir -p $ASSEMBLY_DIR

WIDTH=$((16*120*100 + 8))
HEIGHT=8
DEPTH=7

TILE_HEIGHT=8
TILE_DEPTH=7
TILE_WIDTHS=(5	10	15	20	25	50	100	200	400	800	1600	9600	32000	96000	192000)

for TILE_WIDTH in ${TILE_WIDTHS[*]}
do
    TEST_CASE=domain_${WIDTH}x${HEIGHT}x${DEPTH}_tile_${TILE_WIDTH}x${TILE_HEIGHT}x${TILE_DEPTH}
    
    sed -e s/\{1\}/$WIDTH/g \
        -e s/\{2\}/$HEIGHT/g \
        -e s/\{3\}/$DEPTH/g \
        -e s/\{4\}/$TILE_WIDTH/g \
        -e s/\{5\}/$TILE_HEIGHT/g \
        -e s/\{6\}/$TILE_DEPTH/g \
        tiled.c > $CODE_DIR/tiled_${TEST_CASE}.c
done

for code_file in `ls $CODE_DIR`
do
    echo "Compiling $code_file"

    code_file_parsed=`echo $code_file | cut -d '.' -f1`
    mpiicc -qno-opt-prefetch -openmp -mmic -qopt-report=5 -qopt-report-phase=vec,loop -O3 $CODE_DIR/$code_file -S
    mpiicc -qno-opt-prefetch -openmp -mmic -O3 $CODE_DIR/$code_file -o $BIN_DIR/${code_file_parsed}_mic.o
done

mv *.optrpt $REPORT_DIR
mv *.s $ASSEMBLY_DIR

for binary in `ls $BIN_DIR`
do
    echo "Running binary $binary"
    binary_parsed=`echo $binary | cut -d '.' -f1`
    /opt/intel/mic/bin/micnativeloadex $BIN_DIR/$binary \
        -e "OMP_NUM_THREADS=$NUM_THREADS KMP_AFFINITY=$AFFINITY" \
        > ${OUTPUT_DIR}/resultados_${binary_parsed}
done
