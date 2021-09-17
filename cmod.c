
#include <stdlib.h>
#include <stdio.h>

void
cfptr3dx(float **p_, int d1, int d2, int d3) {
    float *p = (float*)malloc(d1 * d2 * d3);
    *p_ = p;
    printf("%d %d %d\n", d1, d2, d3);
    for (int i = 0; i < d1; ++i)
        for (int j = 0; j < d2; ++j)
            for (int k = 0; k < d3; ++k)
                p[((i * d1) + j * d2) + k * d3] = (((i+1) * d1) + (j+1) * d2) + (k+1) * d3;
}
