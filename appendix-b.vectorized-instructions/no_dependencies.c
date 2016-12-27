#include <stdio.h>
#include <time.h>
#include <sys/time.h>
#include <stdlib.h>
#include <immintrin.h>

#define COUNT 1000000000

double wall_time(void) {
    struct timeval tv;
    struct timezone tz;

    gettimeofday(&tv, &tz);
    return (tv.tv_sec + tv.tv_usec/1000000.0);
}

void fastest(
    double a[], double b[], double c[],
    double d[], double e[], double f[],
    double g[], double h[], double i[],
    double j[], double k[], double l[],
    double m[], double n[], double o[]) {

    __m512d register as = _mm512_set_pd(a[0], a[1], 
        a[2], a[3], a[4], a[5], a[6], a[7]);
    __m512d register bs = _mm512_set_pd(b[0], b[1], 
        b[2], b[3], b[4], b[5], b[6], b[7]);
    __m512d register cs = _mm512_set_pd(c[0], c[1], 
        c[2], c[3], c[4], c[5], c[6], c[7]);

    __m512d register ds = _mm512_set_pd(d[0], d[1], 
        d[2], d[3], d[4], d[5], d[6], d[7]);
    __m512d register es = _mm512_set_pd(e[0], e[1], 
        e[2], e[3], e[4], e[5], e[6], e[7]);
    __m512d register fs = _mm512_set_pd(f[0], f[1], 
        f[2], f[3], f[4], f[5], f[6], f[7]);

    __m512d register gs = _mm512_set_pd(g[0], g[1], 
        g[2], g[3], g[4], g[5], g[6], g[7]);
    __m512d register hs = _mm512_set_pd(h[0], h[1], 
        h[2], h[3], h[4], h[5], h[6], h[7]);
    __m512d register is = _mm512_set_pd(i[0], i[1], 
        i[2], i[3], i[4], i[5], i[6], i[7]);

    __m512d register js = _mm512_set_pd(j[0], j[1], 
        j[2], j[3], j[4], j[5], j[6], j[7]);
    __m512d register ks = _mm512_set_pd(k[0], k[1], 
        k[2], k[3], k[4], k[5], k[6], k[7]);
    __m512d register ls = _mm512_set_pd(l[0], l[1], 
        l[2], l[3], l[4], l[5], l[6], l[7]);

    __m512d register ms = _mm512_set_pd(m[0], m[1], 
        m[2], m[3], m[4], m[5], m[6], m[7]);
    __m512d register ns = _mm512_set_pd(n[0], n[1],
     n[2], n[3], n[4], n[5], n[6], n[7]);
    __m512d register os = _mm512_set_pd(o[0], o[1], 
        o[2], o[3], o[4], o[5], o[6], o[7]);

    unsigned long iter;
    for (iter = 0; iter < COUNT; iter++) {
        cs = _mm512_fmadd_pd(as, bs, cs);
        fs = _mm512_fmadd_pd(ds, es, fs);
        is = _mm512_fmadd_pd(gs, hs, is);
        ls = _mm512_fmadd_pd(js, ks, ls);
        os = _mm512_fmadd_pd(ms, ns, os);
    }

    a[0] = _mm512_reduce_add_pd(as);
    b[0] = _mm512_reduce_add_pd(bs);
    c[0] = _mm512_reduce_add_pd(cs);
    d[0] = _mm512_reduce_add_pd(ds);
    e[0] = _mm512_reduce_add_pd(es);
    f[0] = _mm512_reduce_add_pd(fs);
    g[0] = _mm512_reduce_add_pd(gs);
    h[0] = _mm512_reduce_add_pd(hs);
    i[0] = _mm512_reduce_add_pd(is);
    j[0] = _mm512_reduce_add_pd(js);
    k[0] = _mm512_reduce_add_pd(ks);
    l[0] = _mm512_reduce_add_pd(ls);
    m[0] = _mm512_reduce_add_pd(ms);
    n[0] = _mm512_reduce_add_pd(ns);
    o[0] = _mm512_reduce_add_pd(os);
}

int main() {
    double a[] = {.0, .0, .0, .0, .0, .0, .0, .2};
    double b[] = {.0, .0, .0, .0, .0, .0, .0, -.2};
    double c[] = {.0, .0, .0, .0, .0, .0, .0, .2};

    double d[] = {.0, .0, .0, .0, .0, .0, .0, -.2};
    double e[] = {.0, .0, .0, .0, .0, .0, .0, .2};
    double f[] = {.0, .0, .0, .0, .0, .0, .0, -.2};

    double g[] = {.0, .0, .0, .0, .0, .0, .0, .2};
    double h[] = {.0, .0, .0, .0, .0, .0, .0, -.2};
    double i[] = {.0, .0, .0, .0, .0, .0, .0, .2};

    double j[] = {.0, .0, .0, .0, .0, .0, .0, -.2};
    double k[] = {.0, .0, .0, .0, .0, .0, .0, .2};
    double l[] = {.0, .0, .0, .0, .0, .0, .0, -.2};

    double m[] = {.0, .0, .0, .0, .0, .0, .0, .2};
    double n[] = {.0, .0, .0, .0, .0, .0, .0, -.2};
    double o[] = {.0, .0, .0, .0, .0, .0, .0, .2};

    double t_begin = wall_time();
    fastest(a, b, c, d, e, f, g, h, i, j, k, l, m, n, o);
    double t_end = wall_time();

    printf("a: %f\n", a[0]);
    printf("b: %f\n", b[0]);
    printf("c: %f\n", c[0]);
    printf("d: %f\n", d[0]);
    printf("e: %f\n", e[0]);
    printf("f: %f\n", f[0]);
    printf("g: %f\n", g[0]);
    printf("h: %f\n", h[0]);
    printf("i: %f\n", i[0]);
    printf("j: %f\n", j[0]);
    printf("k: %f\n", k[0]);
    printf("l: %f\n", l[0]);
    printf("m: %f\n", m[0]);
    printf("n: %f\n", n[0]);
    printf("o: %f\n", o[0]);

    double tt = t_end - t_begin;
    printf("Time: %f\n", tt);

    // numero de instrucoes vetorizadas * 
    // doubles por instrucao * operacoes por instrucao / tempo
    double perf = ((5 * 8 * 2) * (COUNT * 1e-9)) / tt;
    printf("GFlops: %f\n", perf);

    return 0;
}
