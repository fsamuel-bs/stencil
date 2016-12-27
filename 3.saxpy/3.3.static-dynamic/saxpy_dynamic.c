#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/time.h>
#include <omp.h>

#define REAL float
#define A_PARAM 1.1

#define SAXPY_SIZE {1}
#define LOOP_COUNT {2}
#define NUM_THREADS {3}

#define ARRAY_SIZE (SAXPY_SIZE * NUM_THREADS)

double wall_time(void) {
  struct timeval tv;
  struct timezone tz;

  gettimeofday(&tv, &tz);
  return (tv.tv_sec + tv.tv_usec/1000000.0);
}

void saxpy(REAL* x, REAL* y, const REAL a) {
    int i, k;
    unsigned long j;

    __assume_aligned(x, 64);
    __assume_aligned(y, 64);

    for (i = 0; i < NUM_THREADS; i++) {
        int offset = i * SAXPY_SIZE;

        for (j = 0; j < LOOP_COUNT; j++) {
            #pragma ivdep
            for (k = 0; k < SAXPY_SIZE; k++) {
                x[offset+k] = a * x[offset+k] + y[offset+k];
            }
        }
    }    
}

int main() {
    const unsigned int loop_count = LOOP_COUNT;
    const REAL a = A_PARAM;
    int num_threads;

    #pragma omp parallel
    #pragma omp master
    num_threads = omp_get_num_threads();

    printf("Running saxpy with %d threads\n", NUM_THREADS);
    printf("Loop count: %lu repetitions\n", LOOP_COUNT);
    printf("Saxpy size: %lu elements\n", SAXPY_SIZE);
    printf("Array size: %llu elements\n", ARRAY_SIZE);

    REAL *x = (REAL *)_mm_malloc(sizeof(REAL)*ARRAY_SIZE, 64);
    REAL *y = (REAL *)_mm_malloc(sizeof(REAL)*ARRAY_SIZE, 64);

    unsigned long i;
    #pragma omp parallel for
    for (i = 0; i < ARRAY_SIZE; i++) {
        y[i] = (REAL)i + 0.1;
        x[i] = (REAL)i + 0.2;
    }

    double t1, t2;
    t1 = wall_time();
    saxpy(x, y, a);
    t2 = wall_time();

    const int flops_per_calc = 2;
    double gops = (double) (1.0e-9 * loop_count * SAXPY_SIZE * num_threads * flops_per_calc);
    double ttime = t2 - t1;
    if (ttime > 0) {
        printf("GOps   = %10.3f\n", gops);
        printf("Secs   = %10.3f\n", ttime);
        printf("GFlops = %10.3f\n", gops / ttime);
    }

    _mm_free(x);
    _mm_free(y);

    return 0;
}
