// 7-Point stencil


#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>
#include <time.h>
#include <sys/time.h>
#include <omp.h>
#include <assert.h>
#include <sys/mman.h>

#define REAL double

#define WIDTH 10
#define WIDTHP WIDTH
// #define WIDTHP ((((WIDTH*sizeof(REAL))+63)/64)*(64/sizeof(REAL)))
#define HEIGHT 10

#define DEPTH {1}
#define COUNT {2}

#define DOMAIN_SIZE (WIDTHP * HEIGHT * DEPTH)

REAL fin[DOMAIN_SIZE]  __attribute__((aligned(64)));
REAL fout[DOMAIN_SIZE] __attribute__((aligned(64)));
REAL coeff[7]          __attribute__((aligned(64)));

double wall_time(void) {
    struct timeval tv;
    struct timezone tz;

    gettimeofday(&tv, &tz);
    return (tv.tv_sec + tv.tv_usec/1000000.0);
}

void initbuf() {
    REAL val;
    int x, y, z;

    for (z = 0; z < DEPTH; z++) {
        val = (z % 10) ? 0 : 1.0;
        for (y = 0; y < HEIGHT; y++) {
            val = val && ((y % 10) ? 0 : 1.0);
            for (x = 0; x < WIDTH; x++) {
                fin[x + y*WIDTHP + z*WIDTHP*HEIGHT] = val;
                fout[x + y*WIDTHP + z*WIDTHP*HEIGHT] = val;
            }
        }
    }

    coeff[0] = 0.99;
    for (x = 1; x < 7; x++) {
        coeff[x] = 0.001666;
    }
}

void compute_stencil() {
    int i, x, y, z, c;

    for (i = 0; i < COUNT/2; i++) {            

        for (z = 1; z < DEPTH - 1; z++) {
            for (y = 1; y < HEIGHT - 1; y++) {
                c = 1 + y*WIDTHP + z*WIDTHP*HEIGHT;
                
                for (x = 1; x < WIDTH - 1; x++) {
                    fout[c] = 
                        coeff[0] * fin[c] +
                        coeff[1] * fin[c - 1] +
                        coeff[2] * fin[c + 1] +
                        coeff[3] * fin[c - WIDTHP] +
                        coeff[4] * fin[c + WIDTHP] +
                        coeff[5] * fin[c - WIDTHP*HEIGHT] +
                        coeff[6] * fin[c + WIDTHP*HEIGHT];
                    c++;
                } // WIDTH
            } // HEIGHT
        } // DEPTH

        for (z = 1; z < DEPTH - 1; z++) {
            for (y = 1; y < HEIGHT - 1; y++) {
                c = 1 + y*WIDTHP + z*WIDTHP*HEIGHT;
                
                for (x = 1; x < WIDTH - 1; x++) {
                    fin[c] = 
                        coeff[0] * fout[c] +
                        coeff[1] * fout[c - 1] +
                        coeff[2] * fout[c + 1] +
                        coeff[3] * fout[c - WIDTHP] +
                        coeff[4] * fout[c + WIDTHP] +
                        coeff[5] * fout[c - WIDTHP*HEIGHT] +
                        coeff[6] * fout[c + WIDTHP*HEIGHT];
                    c++;
                } // WIDTH
            } // HEIGHT
        } // DEPTH

    } // COUNT
}

int main() {
    initbuf();

    printf("Running stencil %d times\n", COUNT);
    printf("Stencil: %dx%dx%d, PAD=%d\n", 
        WIDTH, HEIGHT, DEPTH, WIDTHP);

    double t_begin, t_end;
    t_begin = wall_time();
    compute_stencil();
    t_end = wall_time();

    double t_elapsed = t_end - t_begin;
    double domain = (WIDTH-2)*(HEIGHT-2)*(DEPTH-2);
    double mflops = domain * 13.0 * COUNT/t_elapsed * 1.0e-06;
    printf("Elapsed time : %.3f (s)\n", t_elapsed);
    printf("FLOPS        : %.3f (MFlops)\n", mflops);

    return 0;
}
