#!/bin/bash
#$ -q xeonphi
#$ -l phi=1
#$ -pe mpi 8
#$ -o out
#$ -e err

# Usage: ./submit.sh

source /hpc/modulos/bash/intel-cluster_studio_xe_2016.sh
export SINK_LD_LIBRARY_PATH=/hpc/intel/cluster_studio_xe/compilers_and_libraries/linux/mpi/intel64/lib/:/hpc/intel/cluster_studio_xe_2016/compilers_and_libraries_2016/linux/mpi/mic/lib/:/hpc/intel/cluster_studio_xe_2016/compilers_and_libraries_2016/linux/lib/mic/

OUTPUT_DIR=./output

mkdir -p ./code
mkdir -p ./bin
mkdir -p ./report
mkdir -p ./assembly
mkdir -p $OUTPUT_DIR

for i in `seq 5 29`;
do
    DEPTH=$i
    COUNT=1000000

    sed -e s/\{1\}/$DEPTH/g \
        -e s/\{2\}/$COUNT/g \
        alignment.c > ./code/alignment_$i.c
done

for i in `seq 30 10 90`;
do
    DEPTH=$i
    COUNT=100000

    sed -e s/\{1\}/$DEPTH/g \
        -e s/\{2\}/$COUNT/g \
        alignment.c > ./code/alignment_$i.c
done

for i in `seq 100 50 950`;
do
    DEPTH=$i
    COUNT=10000

    sed -e s/\{1\}/$DEPTH/g \
        -e s/\{2\}/$COUNT/g \
        alignment.c > ./code/alignment_$i.c
done

for i in `seq 1000 2000 30000`;
do
    DEPTH=$i
    COUNT=1000

    sed -e s/\{1\}/$DEPTH/g \
        -e s/\{2\}/$COUNT/g \
        alignment.c > ./code/alignment_$i.c
done

for code_file in `ls ./code`
do
    echo "Compiling $code_file"

    code_file_parsed=`echo $code_file | cut -d '.' -f1`
    mpiicc -openmp -mmic -O3 -qopt-report=4 -qopt-report-phase=vec,loop ./code/$code_file -S
    mpiicc -openmp -mmic -O3 ./code/$code_file -o ./bin/${code_file_parsed}_mic.o
done

mv *.s ./assembly
mv *.optrpt ./report

for binary in `ls ./bin`
do
    echo "Running $binary"
    binary_parsed=`echo $binary | cut -d '.' -f1`
    /opt/intel/mic/bin/micnativeloadex ./bin/$binary \
        > ${OUTPUT_DIR}/resultados_${binary_parsed}
done

