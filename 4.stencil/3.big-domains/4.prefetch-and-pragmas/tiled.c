// Assumes this stencil has 7 points
// center, west, east, north, south, back, front.

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
#define COUNT 100

#define WIDTH {1}
#define WIDTHP WIDTH
#define HEIGHT {2}
#define DEPTH {3}

#define TILE_WIDTH {4}
#define TILE_HEIGHT {5}
#define TILE_DEPTH {6}

#define ARRAY_SIZE (WIDTH * HEIGHT * DEPTH)

REAL fin[ARRAY_SIZE] __attribute__((aligned(64)));
REAL fout[ARRAY_SIZE] __attribute__((aligned(64)));
REAL coeff[7] __attribute__((aligned(64)));

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
    int xx, yy, zz;
    int xmax, ymax, zmax;

    for (i = 0; i < COUNT/2; i++) {

        for (zz = 1; zz < DEPTH - 1; zz = zmax) {
            for (yy = 1; yy < HEIGHT - 1; yy = ymax) {
                for (xx = 1; xx < WIDTH - 1; xx = xmax) {

                    zmax = zz + TILE_DEPTH;
                    if (zmax > DEPTH - 1) zmax = DEPTH - 1;

                    ymax = yy + TILE_HEIGHT;
                    if (ymax > HEIGHT - 1) ymax = HEIGHT - 1;

                    if (xx == 1) {
                        xmax = TILE_WIDTH;
                    } else {
                        xmax = xx + TILE_WIDTH;
                    }
                    if (xmax > WIDTH - 1) xmax = WIDTH - 1;

                    #pragma loop_count (TILE_DEPTH)
                    for (z = zz; z < zmax; z++) {
                        #pragma loop_count (TILE_HEIGHT)
                        for (y = yy; y < ymax; y++) {
                            c = 1 + y*WIDTHP + z*WIDTHP*HEIGHT;

                            #pragma vector nontemporal
                            #pragma loop_count (TILE_WIDTH)
                            for (x = xx; x < xmax; x++) {
                                fout[c] = 
                                    coeff[0] * fin[c] +
                                    coeff[1] * fin[c - 1] +
                                    coeff[2] * fin[c + 1] +
                                    coeff[3] * fin[c - WIDTHP] +
                                    coeff[4] * fin[c + WIDTHP] +
                                    coeff[5] * fin[c - WIDTHP*HEIGHT] +
                                    coeff[6] * fin[c + WIDTHP*HEIGHT];
                                c++;
                            } // TILE_WIDTH
                        } // TILE_HEIGHT
                    } // TILE_DEPTH
                } // WIDTH
            } // HEIGHT
        } // DEPTH

        for (zz = 1; zz < DEPTH - 1; zz = zmax) {
            for (yy = 1; yy < HEIGHT - 1; yy = ymax) {
                for (xx = 1; xx < WIDTH - 1; xx = xmax) {

                    if (zz == 1) {
                        zmax = TILE_DEPTH;
                    } else {
                        zmax = zz + TILE_DEPTH;
                    }
                    if (zmax > DEPTH - 1) zmax = DEPTH - 1;

                    if (yy == 1) {
                        ymax = TILE_HEIGHT;
                    } else {
                        ymax = yy + TILE_HEIGHT;
                    }
                    if (ymax > HEIGHT - 1) ymax = HEIGHT - 1;

                    if (xx == 1) {
                        xmax = TILE_WIDTH;
                    } else {
                        xmax = xx + TILE_WIDTH;
                    }
                    if (xmax > WIDTH - 1) xmax = WIDTH - 1;

                    #pragma loop_count (TILE_DEPTH)
                    for (z = zz; z < zmax; z++) {
                        #pragma loop_count (TILE_HEIGHT)
                        for (y = yy; y < ymax; y++) {
                            c = 1 + y*WIDTHP + z*WIDTHP*HEIGHT;

                            #pragma vector nontemporal
                            #pragma loop_count (TILE_WIDTH)
                            for (x = xx; x < xmax; x++) {
                                fin[c] = 
                                    coeff[0] * fout[c] +
                                    coeff[1] * fout[c - 1] +
                                    coeff[2] * fout[c + 1] +
                                    coeff[3] * fout[c - WIDTHP] +
                                    coeff[4] * fout[c + WIDTHP] +
                                    coeff[5] * fout[c - WIDTHP*HEIGHT] +
                                    coeff[6] * fout[c + WIDTHP*HEIGHT];
                                c++;
                            } // TILE_WIDTH
                        } // TILE_HEIGHT
                    } // TILE_DEPTH
                } // WIDTH
            } // HEIGHT
        } // DEPTH

    } // COUNT
}

int main() {
    int i;

    printf("Stencil: %dx%dx%d, PAD=%d\n", WIDTH, HEIGHT, DEPTH, WIDTHP);
    printf("Tile: %dx%dx%d\n", TILE_WIDTH, TILE_HEIGHT, TILE_DEPTH);
    printf("Running stencil %d times\n", COUNT);

    initbuf();
    
    double t_begin, t_end;
    t_begin = wall_time();
    compute_stencil();
    t_end = wall_time();

    double t_elapsed = t_end - t_begin;
    double mflops = (WIDTH-2)*(HEIGHT-2)*(DEPTH-2) * 13.0 * COUNT/t_elapsed * 1.0e-06;
    printf("Elapsed time : %.3f (s)\n", t_elapsed);
    printf("FLOPS        : %.3f (MFlops)\n", mflops);

    return 0;
}
